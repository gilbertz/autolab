package com.autolab.api.controller;

import com.autolab.api.exception.UtilException;
import com.autolab.api.model.Batch;
import com.autolab.api.model.Book;
import com.autolab.api.model.User;
import com.autolab.api.repository.BatchDao;
import com.autolab.api.repository.BookDao;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by KUN on 2015/11/8.
 */

@RestController
@RequestMapping("/attendance")
public class AttendanceController extends BaseController {
    public static final Logger logger = LoggerFactory.getLogger(AttendanceController.class);

    @Autowired
    protected BatchDao batchDao;

    @Autowired
    protected BookDao bookDao;

    @RequestMapping("/upload")
    public Map<String,?> uploadExcel(@RequestParam("file") MultipartFile file){

        Long batchId = Long.parseLong(file.getOriginalFilename());
        Batch batch = batchDao.findOne(batchId);
        if(batch == null){
            throw new UtilException("batch not exits");
        }
        List<Book> books = bookDao.findByBatch(batch);
            try {
                Workbook wb = new HSSFWorkbook(file.getInputStream());
                Sheet sheet = wb.getSheetAt(0);
                for( int i = 1; i <= sheet.getLastRowNum(); i++ ){
                    Row row = sheet.getRow(i);
                    String jaccountId  = row.getCell(0).getStringCellValue();
                    String attendTime = row.getCell(1).getStringCellValue();
                    User user = userDao.findByJaccountId(jaccountId);
                    if(user == null){
                        continue;
                    }
                    Book book = bookDao.findByUserAndBatch(user,batch);

                }
            } catch (IOException e) {
                e.printStackTrace();
            }

        return success();
    }
}
