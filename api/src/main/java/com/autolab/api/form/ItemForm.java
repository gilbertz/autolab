package com.autolab.api.form;

import com.autolab.api.exception.UtilException;
import com.autolab.api.model.Course;
import com.autolab.api.model.Item;
import com.autolab.api.repository.CourseDao;
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
    private Long courseId;






    public Item generateItem(){
        Item item = new Item();
        item.setName(name);
        ApplicationContext applicationContext = AppContextManager.getAppContext();
        CourseDao courseDao = applicationContext.getBean(CourseDao.class);
        Course course = courseDao.findOne(courseId);
        if(course == null){
            throw new UtilException("course is not exit");
        }
        item.setCourse(course);
        return item;
    }

    public void updateItem(Item item){
        if(name != null){
            item.setName(name);
        }
        if(courseId != null){
            ApplicationContext applicationContext = AppContextManager.getAppContext();
            CourseDao courseDao = applicationContext.getBean(CourseDao.class);
            Course course = courseDao.findOne(courseId);
            if(course == null){
                throw new UtilException("course is not exit");
            }
            item.setCourse(course);
        }

    }

}
