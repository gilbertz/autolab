package com.autolab.api.controller;

import com.autolab.api.exception.UtilException;
import com.autolab.api.form.BatchForm;
import com.autolab.api.model.*;
import com.autolab.api.repository.BatchDao;
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

import javax.persistence.criteria.Predicate;
import javax.validation.Valid;
import java.util.Map;

/**
 * Created by ABC on 2015/10/24 0024.
 */


@RestController
@RequestMapping("/batch")
public class BatchController extends BaseController{
    public static final Logger logger = LoggerFactory.getLogger(BatchController.class);

    @Autowired
    protected BatchDao batchDao;

    @Autowired
    protected ItemDao itemDao;

    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping("/create")
    public Map<String, ?> create(@Valid BatchForm form){
        Batch batch = form.generateBatch();
        if(getUser() != batch.getItem().getCourse().getUser()){
            throw new UtilException("you have no authorization");
        }
        batchDao.save(batch);
        return success(Batch.TAG, batch);
    }

    /**
     * edit a batch
     * @param form
     * @return
     */
    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping("/edit")
    public Map<String, ?> edit(@Valid BatchForm form){
        if(form.getId() == null){
            throw  new UtilException("id required");
        }
        Batch batch = batchDao.findOne(form.getId());
        form.updateBatch(batch);
        batchDao.save(batch);
        return success(Batch.TAG,batch);
    }

    /**
     * delete a batch
     * @param batchId
     * @return
     */
    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping("/del/{batchId}")
    public Map<String, ?> del(@PathVariable Long batchId){
        Batch batch = batchDao.findOne(batchId);
        if(getUser() != batch.getItem().getCourse().getUser()){
            throw new UtilException("you have no authorization");
        }
        if(batch == null){
            throw new UtilException("batch is not exit");
        }

        batch.setStatus(Status.DELETED);

        batchDao.save(batch);

        return success();
    }

    /**
     * fina a batch
     * @param batchId
     * @return
     */
    @RequestMapping(value = "/detail/{batchId}")
    public Map<String, ?> find(@PathVariable Long batchId) {
        Batch batch = batchDao.findOne(batchId);

        if(batch == null){
            throw new UtilException("batch is not exit");
        }
        return success(Batch.TAG, batch);
    }

    @RequestMapping(value = "/page")
    public Map<String, ?> page(
            @RequestParam(required = false, defaultValue = "0") Integer page,
            @RequestParam(required = false, defaultValue = "20") Integer size,
            @RequestParam(required = false, defaultValue = "id") String orderBy,
            @RequestParam(required = false) Long itemId,
            @RequestParam(required = false) String laboratory,
            @RequestParam(required = false, defaultValue = "ASC") Sort.Direction direction
    ) {
        Pageable pageable = new PageRequest(page, size, new Sort(direction,orderBy));
        Page<Batch> batchs = batchDao.findAll((root,query,cb) -> {
            Predicate predicate = setStatusNotDeleted(root, cb);
            if(itemId != null){
                Item item = itemDao.findOne(itemId);
                predicate = cb.and(predicate,cb.equal(root.get(Batch_.item),item));
            }
            if(laboratory != null){
                predicate = cb.and(predicate,cb.equal(root.get(Batch_.laboratory),laboratory));
            }

            return predicate;
        },pageable);
        return success(Batch.TAGS, batchs, pageable);
    }
}
