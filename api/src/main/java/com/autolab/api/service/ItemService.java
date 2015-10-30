package com.autolab.api.service;

import com.autolab.api.exception.UtilException;
import com.autolab.api.model.Item;
import com.autolab.api.repository.ItemDao;
import org.apache.log4j.Logger;
import org.dom4j.Branch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by KUN on 2015/10/30.
 */

@Service
public class ItemService {
    private static Logger logger = Logger.getLogger(ItemService.class);

    @Autowired
    private ItemDao itemDao;

    @Value("${autolab.dayOfWeek}")
    private Integer dayOfWeek;

    @Transactional(rollbackOn = UtilException.class)
    public void createItem(Item item){

        if(dayOfWeek == null){
            throw new UtilException("do not define dayOfWeek");
        }
        String [] weeksOfString = item.getOpenTime().split(",");
        Long [] weeks = new Long[weeksOfString.length];
        for(int i = 0;i < weeksOfString.length;i++){
            weeks[i] = Long.parseLong(weeksOfString[i]);
        }
        List<Branch> braches = new ArrayList<>();
        for(int i =0;i < weeks.length;i++){
            
        }
        itemDao.save(item);
    }
}
