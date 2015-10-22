package com.autolab.api;

import edu.sjtu.jaccount.JAccountManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Hashtable;

/**
 * Created by zhao on 15/10/22.
 */
@Controller
public class LoginController {

    public static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping("/")
    public String login() {

        return "static/views/login";
    }
}
