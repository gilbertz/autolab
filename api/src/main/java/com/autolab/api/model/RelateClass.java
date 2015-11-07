package com.autolab.api.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;

/**
 * Created by KUN on 2015/10/24.
 */

@EqualsAndHashCode(callSuper = false)
@Data
@Entity
@Table(name = RelateClass.TABLE_NAME)
public class RelateClass extends BaseEntity{
    public static final String TAG = RelateClass.class.getSimpleName().toLowerCase();
    public static final String TAGS = TAG + "s";
    public static final String TABLE_NAME=BaseEntity.PREFIX+"related_class";

    @ManyToOne(cascade = {}, fetch = FetchType.EAGER)
    @JoinColumn(name = "teacher_id", nullable = false)
    private User teacher;

    @ManyToOne(cascade = {}, fetch = FetchType.EAGER)
    @JoinColumn(name = "student_id", nullable = false)
    private User student;

    @ManyToOne(cascade = {}, fetch = FetchType.EAGER)
    @JoinColumn(name = "class_id", nullable = false)
    private Class myClass; //class 是Java的关键字，换一个名字
}
