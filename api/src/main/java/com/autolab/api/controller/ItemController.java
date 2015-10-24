package com.autolab.api.controller;

import com.autolab.api.model.Status;
import com.autolab.api.model.User;
import com.autolab.api.repository.ItemDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.autolab.api.form.ItemForm;

import javax.validation.Valid;
import java.util.Map;

/**
 * Created by KUN on 2015/10/24.
 */

@RestController
@RequestMapping("/item")
public class ItemController extends BaseController{
    public static final Logger logger = LoggerFactory.getLogger(ItemController.class);

    @Autowired
    protected ItemDao itemDao;




}
