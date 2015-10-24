package com.autolab.api.form;

import com.autolab.api.model.Course;
import com.autolab.api.model.Item;
import com.autolab.api.repository.CourseDao;
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

    public Item generateCourse(){
        Item item = new Item();
        item.setName(name);
        CourseDao courseDao = applicationContext.getBean(CourseDao.class);
        Episode episode = episodeDao.findOne(episodeId);
        item.s
        return course;
    }

    public void updateCourse(Course course){
        if(name != null){
            course.setName(name);
        }
        if(team != null){
            course.setTerm(team);
        }

    }
}
