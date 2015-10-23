package com.autolab.api.controller;

import com.autolab.api.exception.UtilException;
import com.autolab.api.model.Status;
import com.autolab.api.model.Test;
import com.autolab.api.model.User;
import com.autolab.api.repository.TestDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.criteria.Predicate;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Created by ABC on 2015/10/22 0022.
 */

@RestController
@RequestMapping("/user")
public class UserController extends BaseController {

    public static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    protected TestDao testDao;

    @PreAuthorize(User.Role.HAS_ROLE_USER)
    @RequestMapping(value = "/test/grade")
    public Map<String, ?> getGrades() {

        User user=getUser();
        logger.debug(user.toString());

//        Test test = testDao.findByUser(user);
        List<Test> tests= testDao.findAll();
        
        return success("tests",tests);
    }

}
