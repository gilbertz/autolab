package com.autolab.api.controller;

import com.autolab.api.exception.UtilException;
import com.autolab.api.form.BookForm;
import com.autolab.api.model.Batch;
import com.autolab.api.model.Book;
import com.autolab.api.model.Pager;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.List;
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
        book.setUser(getUser());

        Batch batch=book.getBatch();
        if(  batch.getBooks().size()>= batch.getAllowNumber()){
            throw new UtilException("already reaches the max allow number ");
        }

        bookDao.save(book);
        
        return success(Book.TAG, book);
    }


    /**
     * add the grade
     * @param  form
     * @return
     */

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

        bookDao.delete(book);
        /*
        to avoid bugs
         */
        return success(Book.TAG,bookId);
    }

    /**
     * student browse the books
     *  @param batchId
     * @return page
     */

    //@PreAuthorize(User.Role.HAS_ROLE_ADMIN)
    @RequestMapping(value =  "/page/{batchId}")
    public Map<String,?> browse(@PathVariable Long batchId,
                                @RequestParam(required = false, defaultValue = "0") Integer page,
                                @RequestParam(required = false, defaultValue = "20") Integer size){
        Batch batch = batchDao.findOne(batchId);
        if(batch == null){
            throw new UtilException("batch not exits");
        }
        if(getUser() != batch.getItem().getCourse().getUser()){
            throw new UtilException("you have no authorization");
        }
        List<Book> books = batch.getBooks();

        Pager pager = new Pager(size, page, books.size(), "books", books);

        return success(Pager.TAG, pager.map());


    }







}
