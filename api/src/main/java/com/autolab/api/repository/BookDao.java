package com.autolab.api.repository;

/**
 * Created by KUN on 2015/10/24.
 */

import com.autolab.api.model.Book;
import com.autolab.api.model.User;

import java.util.List;


import com.autolab.api.model.Book;
import com.autolab.api.model.User;

import java.util.List;

/**
 * Created by zhao on 15/10/23.
 */
public interface BookDao extends BaseDao<Book, Long>{

    List<Book> findAll();

    Book findByUser(User user);


}