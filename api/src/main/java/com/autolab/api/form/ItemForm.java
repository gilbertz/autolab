package com.autolab.api.form;

import com.autolab.api.exception.UtilException;
import com.autolab.api.model.Course;
import com.autolab.api.model.CourseTeacher;
import com.autolab.api.model.Item;
import com.autolab.api.repository.CourseDao;
import com.autolab.api.repository.CourseTeacherDao;
import com.autolab.api.util.AppContextManager;
import lombok.Data;
import org.springframework.context.ApplicationContext;

import javax.validation.constraints.NotNull;

/**
 * Created by KUN on 2015/10/24.
 */

@Data
public class ItemForm {

    private Long id;

    @NotNull
    private String name;

    @NotNull
    private Long courseTeacherId;

    @NotNull
    private String place;

    @NotNull
    private String openTime;

    @NotNull
    private Integer allowNumber;






    public Item generateItem(){
        Item item = new Item();
        item.setName(name);
        item.setPlace(place);
        item.setOpenTime(openTime);
        ApplicationContext applicationContext = AppContextManager.getAppContext();
        CourseTeacherDao courseTeacherDao = applicationContext.getBean(CourseTeacherDao.class);
        CourseTeacher courseTeacher = courseTeacherDao.findOne(courseTeacherId);
        if(courseTeacher == null){
            throw new UtilException("class is not exit");
        }
        item.setCourseTeacher(courseTeacher);
        return item;
    }

    public void updateItem(Item item){
        if(name != null){
            item.setName(name);
        }
        if(place != null){
            item.setPlace(place);
        }
        if(openTime != null){
            item.setOpenTime(openTime);
        }
        if(courseTeacherId != null){
            ApplicationContext applicationContext = AppContextManager.getAppContext();
            CourseTeacherDao courseTeacherDao = applicationContext.getBean(CourseTeacherDao.class);
            CourseTeacher courseTeacher = courseTeacherDao.findOne(courseTeacherId);
            if(courseTeacher == null){
                throw new UtilException("class is not exit");
            }
            item.setCourseTeacher(courseTeacher);
        }

    }

}
