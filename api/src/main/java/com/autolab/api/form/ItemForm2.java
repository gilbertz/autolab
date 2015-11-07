package com.autolab.api.form;

import com.autolab.api.exception.UtilException;
import com.autolab.api.model.Course;
import com.autolab.api.model.Item;
import com.autolab.api.repository.CourseDao;
import com.autolab.api.util.AppContextManager;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import org.springframework.context.ApplicationContext;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.autolab.api.form.Time;

/**
 * Created by ABC on 2015/11/6 0006.
 */

@Data
public class ItemForm2 {

    private Long id;

    @NotNull
    private String name;

    @NotNull
    private Long courseId;

    @NotNull
    private String place;

    //@NotNull
    private List<Time> times;

    @NotNull
    private Integer allowNumber;

    public Item generateItem(){
        Item item = new Item();
        item.setName(name);
        item.setPlace(place);
        item.setOpenTime(null);
        ApplicationContext applicationContext = AppContextManager.getAppContext();
        CourseDao courseDao = applicationContext.getBean(CourseDao.class);
        Course course = courseDao.findOne(courseId);
        if(course == null){
            throw new UtilException("course is not exit");
        }
        item.setCourse(course);
        return item;
    }
}
