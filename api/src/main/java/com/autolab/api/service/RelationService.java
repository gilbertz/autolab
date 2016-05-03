package com.autolab.api.service;

import com.autolab.api.exception.UtilException;
import com.autolab.api.model.*;
import com.autolab.api.repository.CourseDao;
import com.autolab.api.repository.CourseTeacherDao;
import com.autolab.api.repository.CourseTeacherStudentDao;
import com.autolab.api.repository.UserDao;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.io.IOException;
import java.util.regex.Pattern;

/**
 * Created by zhao on 16/5/3.
 */
@Service
public class RelationService extends UserService{
    private static final Logger logger = LoggerFactory.getLogger(UserService.class);

    @Autowired
    CourseTeacherDao courseTeacherDao;

    @Autowired
    CourseTeacherStudentDao courseTeacherStudentDao;

    @Autowired
    UserDao userDao;

    @Autowired
    CourseDao courseDao;

    public static boolean isNumeric(String str) {
        Pattern pattern = Pattern.compile("[0-9]*");
        return pattern.matcher(str).matches();
    }


    @Transactional(rollbackOn = UtilException.class)
    public Integer setRelation(MultipartFile file){
        String fileName = file.getOriginalFilename();
        Pattern pattern = Pattern.compile("[. -]+");
        String [] name = pattern.split(fileName);

        CourseTeacher courseTeacher = new CourseTeacher();
        if(name.length == 3){
            Long idname = new Long(1);
            Course course = courseDao.findById(idname);
            if(course == null){
                throw new UtilException("course not exist");
            }
            User teacher = userDao.findByJaccountId(name[1]);
            if(teacher == null){
                throw new UtilException("teacher not exist");
            }
            courseTeacher.setCourse(course);
            courseTeacher.setTeacher(teacher);
            courseTeacher.setStatus(Status.OK);
            courseTeacherDao.save(courseTeacher);
        }else {
            throw new UtilException("file name is wrong");
        }

        int count = 0;
        try {
            Workbook wb = new HSSFWorkbook(file.getInputStream());
            Sheet sheet = wb.getSheetAt(0);
            // 遍历合并区域
            for (int i = 0; i < sheet.getNumMergedRegions(); i++) {
                CellRangeAddress region = sheet.getMergedRegion(i); //
                int colIndex = region.getFirstColumn();             // 合并区域首列位置
                int rowNum = region.getFirstRow();                     // 合并区域首行位置
                if(sheet.getRow(rowNum).getCell(colIndex).getCellType() == Cell.CELL_TYPE_STRING){
                    String jaccountId = sheet.getRow(rowNum).getCell(colIndex).getStringCellValue();
                    if (jaccountId.length() == 10 && isNumeric(jaccountId)){
                        System.out.println("第[" + i + "]个合并区域：" +  jaccountId);
                        CourseTeacherStudent courseTeacherStudent = new CourseTeacherStudent();
                        courseTeacherStudent.setCourseTeacher(courseTeacher);
                        User student = userDao.findByJaccountId(jaccountId);
                        if(student == null){
                            logger.debug("invalid student id");
                            continue;
                        }
                        courseTeacherStudent.setStudent(student);
                        courseTeacherStudentDao.save(courseTeacherStudent);
                        count++;
                    }
                }

            }
        }catch (IOException e){
            throw new UtilException("invalid file");
        }

        return count;
    }

}
