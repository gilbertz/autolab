package com.autolab.api.controller;

import edu.sjtu.jaccount.JAccountManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
    public String home(HttpServletRequest request, HttpServletResponse response, HttpSession session, RedirectAttributes attr) {

        String sid = "jaexperimentreservation20150922";
        String keyDir = this.getClass().getResource("/public/static").toString();
        keyDir = keyDir.substring(5);

        JAccountManager jam = new JAccountManager(sid, keyDir);

        Hashtable ht = jam.checkLogin(request, response, session, request.getRequestURI());

        if (ht != null) {
            logger.debug((String) ht.get("uid"));

            attr.addAttribute("client_id", "clientapp");
            attr.addAttribute("client_secret", "f506d105142e2928e2e37675b560ff75");
            attr.addAttribute("grant_type", "jaccount");
            attr.addAttribute("scope", "read write");
            attr.addAttribute("jaccount_uid", ht.get("uid"));
            attr.addAttribute("jaccount_chinesename", ht.get("chinesename"));
            attr.addAttribute("jaccount_id",ht.get("id"));
            //认证成功后，获取accessToken
            //return "redirect:/oauth/token?client_id=clientapp&client_secret=f506d105142e2928e2e37675b560ff75"
            //+"&grant_type=jaccount&scope=read write&jaccount_uid="+ht.get("uid") + "&jaccount_chinesename="
                    //+ "zqin" + "&jaccount_id=" + "123";

            //return "static/views/home";

            //锟斤拷证锟缴癸拷锟襟，伙拷取accessToken
            return "redirect:static/index";
            //return "static/index";

        } else {
            return "static/page/login";

        }
    }
}
