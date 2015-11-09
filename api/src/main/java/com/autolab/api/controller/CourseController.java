package com.autolab.api.controller;

/**
 * Created by KUN on 2015/10/24.
 */

import com.autolab.api.exception.UtilException;
import com.autolab.api.form.CourseForm;
import com.autolab.api.model.Course;
import com.autolab.api.model.Course_;
import com.autolab.api.model.Status;
import com.autolab.api.model.User;
import com.autolab.api.repository.CourseDao;
import com.autolab.api.service.CourseService;
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

@RestController
@RequestMapping("/course")
public class CourseController  extends BaseController{
    public static final Logger logger = LoggerFactory.getLogger(CourseController.class);

    @Autowired
    protected CourseDao courseDao;

    @Autowired
    protected CourseService courseService;

    /**
     * create a new course
     * @param form
     * @return
     */
    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value = "/create")
    public Map<String,?> create(@Valid CourseForm form){
        User user = getUser();
        Course course = form.generateCourse();
        courseService.createCourse(course,user);
        return success(Course.TAG, course);
    }

    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value = "/addteacher/{courseId}")
    public Map<String, ?> addTeacher(@PathVariable Long courseId){
        Course course = courseDao.findOne(courseId);
        if(course == null){
            throw new UtilException("course is not exit");
        }
        courseService.addTeacher(course, getUser());
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

    @RequestMapping(value = "/page")
    public Map<String, ?> page(
            @RequestParam(required = false, defaultValue = "0") Integer page,
            @RequestParam(required = false, defaultValue = "20") Integer size,
            @RequestParam(required = false, defaultValue = "id") String orderBy,
            @RequestParam(required = false) Long userId,
            @RequestParam(required = false) String name,
            @RequestParam(required = false) String term,
            @RequestParam(required = false, defaultValue = "ASC") Sort.Direction direction
    ) {
        Pageable pageable = new PageRequest(page, size, new Sort(direction,orderBy));
        Page<Course> courses = courseDao.findAll((root,query,cb) -> {
            Predicate predicate = setStatusNotDeleted(root, cb);
            if(userId != null){
                User user = userDao.findOne(userId);
                predicate = cb.and(predicate,cb.equal(root.get(Course_.user),user));
            }
            if(name != null){
                predicate = cb.and(predicate,cb.equal(root.get(Course_.name),name));
            }
            if(term != null){
                predicate = cb.and(predicate,cb.equal(root.get(Course_.term),term));
            }

            return predicate;
        },pageable);
        return success(Course.TAGS, courses, pageable);
    }
}
