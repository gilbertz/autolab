package com.autolab.api.repository;

import com.autolab.api.model.User;

/**
 * Created by zhao on 15/10/22.
 */
public interface UserDao extends BaseDao<User, Long> {


    User findByAliId(String aliId);

    User findByUsername(String username);

    User findById(Long id);

}

