package com.autolab.api.controller;

import com.autolab.api.service.RelationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * Created by zhao on 16/5/3.
 */
@RestController
@RequestMapping("/relation")
public class RelationController extends BaseController {
    public static final Logger logger = LoggerFactory.getLogger(RelationController.class);

    @Autowired
    RelationService relationService;

    @RequestMapping("/upload")
    public Map<String,?> uploadExcel(@RequestParam MultipartFile file){
        Integer count = relationService.setRelation(file);
        return success("success upload",count);
    }
}
