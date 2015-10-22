package com.autolab.api.config;

import com.autolab.api.model.User;
import com.autolab.api.repository.UserDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.provider.*;
import org.springframework.security.oauth2.provider.token.AbstractTokenGranter;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;

import java.util.Map;

/**
 * Created by zhao on 15/10/22.
 */
public class JaccountTokenGranter extends AbstractTokenGranter {
    public static final String GRANT_TYPE = "jaccount";
    public static final Logger logger = LoggerFactory.getLogger(JaccountTokenGranter.class);


    JaccountTokenGranter(AuthorizationServerTokenServices tokenServices, ClientDetailsService clientDetailsService,
                    OAuth2RequestFactory requestFactory) {
        super(tokenServices, clientDetailsService, requestFactory, JaccountTokenGranter.GRANT_TYPE);
    }

    protected OAuth2Authentication getOAuth2Authentication(ClientDetails client, TokenRequest tokenRequest) {
        Map<String, String> params = tokenRequest.getRequestParameters();

        if(!params.containsKey("ali_id")){
            logger.debug("ali_id不存在");
            throw new com.autolab.api.exception.UtilException("ali_id不存在");
        }

        if(!params.containsKey("ali_nick")){
            logger.debug("ali_nick不存在");
            throw new com.autolab.api.exception.UtilException("ali_nick不存在");
        }

        if(!params.containsKey("ali_avatar")){
            logger.debug("ali_avatar不存在");
            throw new com.autolab.api.exception.UtilException("ali_avatar不存在");
        }

        String aliId=params.get("ali_id");
        String aliNick=params.get("ali_nick");
        String aliAvatar=params.get("ali_avatar");


        ApplicationContext appContextManager = com.autolab.api.util.AppContextManager.getAppContext();
        UserDao userDao =appContextManager.getBean(UserDao.class);

        User user = userDao.findByAliId(aliId);
        if (user == null) {

            logger.debug("不存在该阿里账号，马上创建一个。");

            //新建一个阿里用户
            user=User.generateAliUser(aliId,aliNick,aliAvatar);

            userDao.save(user);

        }

        //Authentication authentication = new UsernamePasswordAuthenticationToken(aliUsername, aliPassword, user.getAuthorities());
        Authentication authentication = new AnonymousAuthenticationToken(aliId,user,user.getAuthorities());
        Object principal=authentication.getPrincipal();
        User aliUser=(User)principal;
        OAuth2Authentication oAuth2authentication = new OAuth2Authentication(tokenRequest.createOAuth2Request(client), authentication);
        Object principal1=oAuth2authentication.getUserAuthentication().getPrincipal();
        User aliUser1=(User)principal1;

        return oAuth2authentication;
    }
}
