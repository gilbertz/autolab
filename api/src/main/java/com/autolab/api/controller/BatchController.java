package com.autolab.api.controller;

import com.autolab.api.exception.UtilException;
import com.autolab.api.form.BatchForm;
import com.autolab.api.model.Batch;
import com.autolab.api.model.User;
import com.autolab.api.repository.BatchDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.Map;

/**
 * Created by ABC on 2015/10/24 0024.
 */


@RestController
@RequestMapping("/batch")
public class BatchController extends BaseController{
    public static final Logger logger = LoggerFactory.getLogger(BatchController.class);

    @Autowired
    protected BatchDao batchDao;

    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping("/create")
    public Map<String, ?> create(@Valid BatchForm form){
        Batch batch = form.generateBatch();
        if(getUser() != batch.getItem().getCourse().getUser()){
            throw new UtilException("you have no authorization");
        }
        batchDao.save(batch);
        return success(Batch.TAG, batch);
    }
}
