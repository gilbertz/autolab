package com.autolab.api.controller;

import edu.sjtu.jaccount.JAccountManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Hashtable;

/**
 * Created by zhao on 15/10/22.
 */
@Controller
public class HomeController {
    public static final Logger logger = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping("/home")
    public String home(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

        String sid = "jaexperimentreservation20150922";
        String keyDir = this.getClass().getResource("/public/static").toString();
        keyDir = keyDir.substring(5);

        JAccountManager jam = new JAccountManager(sid, keyDir);

        Hashtable ht = jam.checkLogin(request, response, session, request.getRequestURI());

        if (ht != null) {
            logger.debug((String) ht.get("uid"));
<<<<<<< HEAD
            //��֤�ɹ��󣬻�ȡaccessToken
            return "redirect:/oauth/token?client_id=clientapp&client_secret=f506d105142e2928e2e37675b560ff75"
            +"&grant_type=jaccount&scope=read write&jaccount_uid="+ht.get("uid") + "&jaccount_chinesename="
                    + "zqin" + "&jaccount_id=" + "123";

            //return "static/views/home";
=======
            //��֤�ɹ��󣬻�ȡaccessToken
           // return "redirect:/oauth/token";
            return "static/index";
>>>>>>> 4e11768b349f37d781fd425cb2e6c5c2b4095a64
        } else {
            return "static/page/login";

        }
    }
}