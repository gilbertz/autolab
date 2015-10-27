package com.autolab.api.controller;

import com.autolab.api.exception.UtilException;
import com.autolab.api.model.*;
import com.autolab.api.repository.CourseDao;
import com.autolab.api.repository.ItemDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.autolab.api.form.ItemForm;

import javax.persistence.criteria.Predicate;
import javax.validation.Valid;
import java.util.Map;

/**
 * Created by KUN on 2015/10/24.
 */

@RestController
@RequestMapping("/item")
public class ItemController extends BaseController{
    public static final Logger logger = LoggerFactory.getLogger(ItemController.class);

    @Autowired
    protected ItemDao itemDao;

    @Autowired
    protected CourseDao courseDao;


    /**
     * create a item
     * @param form
     * @return
     */
    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value = "/create")
    public Map<String,?> create(@Valid ItemForm form){
        Item item = form.generateItem();
        if(getUser() != item.getCourse().getUser()){
            throw new UtilException("you have no authorization");
        }
        itemDao.save(item);
        return success(Item.TAG, item);
    }

    /**
     * edit a course
     *@param form
     * @return
     */
    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value = "/edit")
    public Map<String, ?> edit(ItemForm form) {

        if (form.getId() == null) {
            throw new UtilException("id required!");
        }
        Item item = itemDao.findOne(form.getId());

        form.updateItem(item);

        itemDao.save(item);

        return success(Item.TAG, item);
    }

    /**
     * detele a course
     * @param itemId
     * @return
     */
    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value = "/del/{itemId}")
    public Map<String, ?> del(@PathVariable Long itemId) {

        Item item = itemDao.findOne(itemId);

        if(item == null){
            throw new UtilException("item is not exit");
        }

        item.setStatus(Status.DELETED);

        itemDao.save(item);

        return success();
    }

    /**
     * find a item
     * @param itemId
     * @return
     */
    @RequestMapping(value = "/detail/{itemId}")
    public Map<String, ?> find(@PathVariable Long itemId) {
        Item item = itemDao.findOne(itemId);

        if(item == null){
            throw new UtilException("item is not exit");
        }
        return success(Item.TAG, item);
    }

    @RequestMapping(value = "/page")
    public Map<String, ?> page(
            @RequestParam(required = false, defaultValue = "0") Integer page,
            @RequestParam(required = false, defaultValue = "20") Integer size,
            @RequestParam(required = false, defaultValue = "id") String orderBy,
            @RequestParam(required = false) Long courseId,
            @RequestParam(required = false) String name,
            @RequestParam(required = false, defaultValue = "ASC") Sort.Direction direction
    ) {
        Pageable pageable = new PageRequest(page, size, new Sort(direction,orderBy));
        Page<Item> items = itemDao.findAll((root,query,cb) -> {
            Predicate predicate = setStatusNotDeleted(root, cb);
            if(courseId != null){
                Course course = courseDao.findOne(courseId);
                predicate = cb.and(predicate,cb.equal(root.get(Item_.course),course));
            }
            if(name != null){
                predicate = cb.and(predicate,cb.equal(root.get(Item_.name),name));
            }

            return predicate;
        },pageable);
        return success(Item.TAGS, items, pageable);
    }



}