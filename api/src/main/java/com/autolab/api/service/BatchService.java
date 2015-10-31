package com.autolab.api.service;

import com.autolab.api.exception.UtilException;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

/**
 * Created by KUN on 2015/10/31.
 */

@Service
public class BatchService {

    private static Logger logger = Logger.getLogger(BatchService.class);

    @Transactional(rollbackOn = UtilException.class)
    public void setGrade(Long [] studentIds, Long []grades){
        if(studentIds.length != grades.length){
            throw new UtilException("");
        }
    }
}
