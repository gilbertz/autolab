package com.autolab.api.repository;

import com.autolab.api.model.RelateClass;
import com.autolab.api.model.User;

import java.util.List;

/**
 * Created by KUN on 2015/11/7.
 */
public interface RelateClassDao extends BaseDao<RelateClass, Long> {
    List<RelateClass> findByTeacher(User teacher);
}
