package com.autolab.api.repository;

import com.autolab.api.model.User;

/**
 * Created by zhao on 15/10/22.
 */
public interface UserDao extends BaseDao<User, Long> {

    User findByJaccountUid(String jaccountUid);

    User findByJaccountId(String jaccountId);

    User findByJaccountChinesename(String jaccountChinesename);

    User findByUsername(String username);

    User findById(Long id);

}

