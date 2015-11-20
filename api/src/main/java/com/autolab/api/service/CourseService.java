package com.autolab.api.service;

import com.autolab.api.exception.UtilException;
import com.autolab.api.model.*;
import com.autolab.api.repository.CourseDao;
import com.autolab.api.repository.CourseTeacherDao;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Created by ABC on 2015/11/9 0009.
 */

@Service
public class CourseService {

    private static Logger logger = Logger.getLogger(CourseService.class);

    @Autowired
    private CourseTeacherDao courseTeacherDao;

    @Autowired
    private CourseDao courseDao;

    public boolean checkAuth(User user, Course course){
        CourseTeacher courseTeacher = courseTeacherDao.findByCourseAndTeacher(course, user);
        List<CourseTeacher> courseTeachers = courseTeacherDao.findByCourse(course);

        if(courseTeacher == null || courseTeachers == null){
            throw new UtilException("there is no information in database");
        }
        if(courseTeachers.contains(courseTeacher)){
            return true;
        }
        else{
            return false;
        }
    }

    /**
     *
     * @param course
     */
    public void createCourse(Course course){
        //do not set courseTeacher, due to we add those information in database by hand or use url: /course/addteacher/courseId
        courseDao.save(course);
    }


    /**
     *
     * @param course
     * @param teacher
     */
    public void addTeacher(Course course, User teacher){
        CourseTeacher courseTeacher = courseTeacherDao.findByCourseAndTeacher(course,teacher);
        if(courseTeacher != null){
            throw new UtilException("the teacher is already in the course");
        }
        courseTeacher.setCourse(course);
        courseTeacher.setTeacher(teacher);
        courseTeacherDao.save(courseTeacher);
        List<CourseTeacher> courseTeachers = course.getCourseTeachers();
        if(courseTeachers == null){
            throw new UtilException("database error");
        }
        courseTeachers.add(courseTeacher);
        course.setCourseTeachers(courseTeachers);
        courseDao.save(course);
    }

    /**
     *
     * @param course
     * @param teacher
     * @return
     */
    public List<CourseTeacherStudent> getStudentGrades(Course course, User teacher){
        CourseTeacher courseTeacher = courseTeacherDao.findByCourseAndTeacher(course, teacher);
        if(courseTeacher == null){
            throw new UtilException("the teacher not belongs to this course");
        }
        List<CourseTeacherStudent> courseTeacherStudents = courseTeacher.getCourseTeacherStudents();
        return courseTeacherStudents;
    }

    public List<CourseTeacher> getTeachersByCourse(Course course){
        return courseTeacherDao.findByCourse(course);
    }

    public CourseTeacher getCourseTeacherByCourseAndTeacher(Course course,User teacher){
        return courseTeacherDao.findByCourseAndTeacher(course, teacher);
    }

    public List<Book> getGradeByStudentAndCourseTeacherId(User student, Long courseTeacherId){
        CourseTeacher courseTeacher = courseTeacherDao.findOne(courseTeacherId);
        if(courseTeacher == null){
            throw new UtilException("class not exits");
        }
        List<CourseTeacherStudent> courseTeacherStudents = courseTeacher.getCourseTeacherStudents();
        if(!courseTeacherStudents.contains(student)){
            throw new UtilException("The student not belongs to this class");
        }
        List<Book> books = student.getBooks();
         books.stream().filter(book -> book.getBatch().getItem().getCourseTeacher().equals(courseTeacher));

        return books;
    }
}
