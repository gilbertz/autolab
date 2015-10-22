package com.autolab.api.service;

import com.autolab.api.model.OAuth2;
import com.autolab.api.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.stereotype.Service;

import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.OAuth2Request;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;

import java.io.Serializable;
import java.util.*;
import org.apache.log4j.Logger;

/**
 * Created by ABC on 2015/10/22 0022.
 */

@Service
public class UserService {

    @Autowired
    TokenStore tokenStore;

    private static Logger logger = Logger.getLogger(UserService.class);

    /*******************************Auth 相关*************************************/
    public DefaultTokenServices defaultTokenServices() {

        DefaultTokenServices tokenServices = new DefaultTokenServices();
        tokenServices.setSupportRefreshToken(true);
        tokenServices.setTokenStore(this.tokenStore);
        return tokenServices;
    }

    /**
     * 自己手动来认证，然后返回access_token.
     * @param user 用户
     * @param clientId clientId
     * @return 认证信息。
     */
    public OAuth2 oauth2(User user,String clientId){


        Map<String, String> requestParameters = new HashMap<>();
        boolean approved = true;
        Set<String> scope = new HashSet<>();
        scope.add("read");
        scope.add("write");
        Set<String> resourceIds = new HashSet<>();
        Set<String> responseTypes = new HashSet<>();
        responseTypes.add("code");
        Map<String, Serializable> extensionProperties = new HashMap<>();

        OAuth2Request oAuth2Request = new OAuth2Request(requestParameters, clientId,
                user.getAuthorities(), approved, scope,
                resourceIds, null, responseTypes, extensionProperties);



        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(user, null, user.getAuthorities());
        OAuth2Authentication auth = new OAuth2Authentication(oAuth2Request, authenticationToken);

        OAuth2AccessToken token = defaultTokenServices().createAccessToken(auth);

        OAuth2 oAuth2=new OAuth2();
        oAuth2.setAccessToken(token.getValue());
        oAuth2.setTokenType(token.getTokenType());
        oAuth2.setRefreshToken(token.getRefreshToken().getValue());
        oAuth2.setExpiresIn(token.getExpiresIn());

        return oAuth2;
    }


    /*******************************Auth 相关*************************************/
}
