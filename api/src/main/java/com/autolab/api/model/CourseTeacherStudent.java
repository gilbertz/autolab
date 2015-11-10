package com.autolab.api.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;

/**
 * Created by KUN on 2015/11/10.
 */

@EqualsAndHashCode(callSuper = false)
@Data
@Entity
@Table(name = CourseTeacherStudent.TABLE_NAME)
public class CourseTeacherStudent extends BaseEntity{
    public static final String TAG = CourseTeacherStudent.class.getSimpleName().toLowerCase();
    public static final String TAGS = TAG + "s";
    public static final String TABLE_NAME=BaseEntity.PREFIX+"related_class";

    @ManyToOne(cascade = {}, fetch = FetchType.EAGER)
    @JoinColumn(name = "course_teacher_id", nullable = false)
    private CourseTeacher courseTeacher;

    @ManyToOne(cascade = {}, fetch = FetchType.EAGER)
    @JoinColumn(name = "student_id", nullable = false)
    private User student;

    private String grade;
}
