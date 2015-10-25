package com.autolab.api.controller;

import com.autolab.api.exception.UtilException;
import com.autolab.api.form.BookForm;
import com.autolab.api.model.Batch;
import com.autolab.api.model.Book;
import com.autolab.api.model.User;
import com.autolab.api.repository.BatchDao;
import com.autolab.api.repository.BookDao;
import net.sf.jasperreports.olap.mapping.Mapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.Map;

/**
 * Created by KUN on 2015/10/24.
 */

@RestController
@RequestMapping("/book")
public class BookController extends BaseController {
    private static final Logger logger = LoggerFactory.getLogger(BookController.class);

    @Autowired
    protected BookDao bookDao;

    @Autowired
    protected BatchDao batchDao;

    /**
     * create a book
     * @param  form
     * @return
     */

    @PreAuthorize(User.Role.HAS_ROLE_USER)
    @RequestMapping(value = "/create")
    public Map<String,?> create(@Valid BookForm form){
        Book book=form.generateBook();
        if(!getUser() .equals( book.getUser())){
            throw new UtilException("you have no authorization booking for other students")
        }

        Batch batch=book.getBatch();
        if(  batch.getBooks().size()>= batch.getAllowNumber()){
            throw new UtilException("already reaches the max allow number ");
        }

        bookDao.save(book);

        batchDao.save(batch);
        return success(Book.TAG, book);
    }


    /**
     * add the grade
     * @param  form
     */
    @PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value =  "/grade")
    public Map<String,?> grade(@Valid )

    /**
     * detele a book
     * @param bookId
     * @return
     */
    @PreAuthorize(User.Role.HAS_ROLE_USER)
    @RequestMapping(value ="/del/{bookId}")
    public  Map<String,?> del(@PathVariable Long bookId){
        Book book = bookDao.findOne(bookId);

        if(book == null){
            throw new UtilException("book is not exit");
        }

        if(  getUser().equals(book.getUser()) ){
            throw new  UtilException("cannot delete other students book");
        }
    }

    /**
     * student browse the books
     *
     */

    @RequestMapping(value =  "/page")
    public Map<String,?> browse(){
        if(getUser().getRole()==User.Role.ROLE_USER){
            return success(Book.TAGS, getUser().getBooks());
        }

        if(getUser().getRole()==User.Role.ROLE_ADMIN){
            return success(Book.TAGS,getUser().getCourses());
        }
        else
            throw new UtilException("no authorization");


    }







}
