package com.autolab.api.controller;

import com.autolab.api.model.Status;
import com.autolab.api.model.User;
import com.autolab.api.repository.ItemDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.autolab.api.form.ItemForm;

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

    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value = "/create")
    public Map<String,?> create(@Valid ItemForm form){
        User user = getUser();
        Course course = form.generateCourse();
        course.setUser(user);
        courseDao.save(course);
        return success(Course.TAG, course);
    }

    /**
     * edit a course
     *@param form
     * @return
     */
    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value = "/edit")
    public Map<String, ?> edit(CourseForm form) {

        if (form.getId() == null) {
            throw new UtilException("id required!");
        }
        Course course = courseDao.findOne(form.getId());

        form.updateCourse(course);

        courseDao.save(course);

        return success(Course.TAG, course);
    }

    /**
     * detele a course
     * @param courseId
     * @return
     */
    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value = "/del/{courseId}")
    public Map<String, ?> del(@PathVariable Long courseId) {

        Course course = courseDao.findOne(courseId);

        if(course == null){
            throw new UtilException("course is not exit");
        }

        course.setStatus(Status.DELETED);

        courseDao.save(course);

        return success();
    }

    /**
     * fina a course
     * @param courseId
     * @return
     */
    @RequestMapping(value = "/detail/{courseId}")
    public Map<String, ?> find(@PathVariable Long courseId) {
        Course course = courseDao.findOne(courseId);

        if(course == null){
            throw new UtilException("course is not exit");
        }
        return success(Course.TAG, course);
    }


}
