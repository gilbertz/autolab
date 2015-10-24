package com.autolab.api.repository;

import com.autolab.api.model.Test;
import com.autolab.api.model.User;

import java.util.List;

/**
 * Created by zhao on 15/10/23.
 */
public interface TestDao extends BaseDao<Test, Long>{

    List<Test> findAll();

    Test findByUser(User user);


}
