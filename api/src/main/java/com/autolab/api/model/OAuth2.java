package com.autolab.api.model;

import lombok.Data;

/**
 * Created by zhao on 15/10/22.
 */
@Data
public class OAuth2 {
    public static final String TAG = OAuth2.class.getSimpleName().toLowerCase();

    private String accessToken;
    private String tokenType;
    private String refreshToken;
    private Integer expiresIn;

}
