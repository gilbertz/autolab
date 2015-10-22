package com.autolab.api.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.google.gson.annotations.SerializedName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import org.springframework.security.core.CredentialsContainer;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.*;

/**
 * Created by zhao on 15/10/22.
 */
@EqualsAndHashCode(callSuper = false)
@Data
@Entity
@Table(name = BaseEntity.PREFIX + "user")
public class User extends BaseEntity implements UserDetails, CredentialsContainer {

    private static final long serialVersionUID = 100L;
    public static String TAG = User.class.getSimpleName().toLowerCase();


    //和阿里账户相关的字段
    private String aliId;
    private String aliNick;
    private String aliAvatar;

    //用户角色
    @Enumerated(EnumType.STRING)
    private Role role;

    private String openid;


    private Integer subscribe;


    private String nickname;

    private String sex;

    private String language;


    private String city;

    private String province;

    private String country;

    private String headimgurl;


    @Column(name = "subscribe_time")
    @SerializedName("subscribe_time")
    private Long subscribeTime;


    private String unionid;

    //经纬度

    private Double longitude;

    private Double latitude;
    //地理位置精度

    private Double accuracy;

    private String username;

    @JsonIgnore
    private String password;

    private String phone;

    //上次登录时间

    @Column(name = "last_login_ip")
    @SerializedName("last_login_ip")
    private String lastLoginIp;

    //上次登录时间

    @Column(name = "last_login_time")
    @SerializedName("last_login_time")
    private Date lastLoginTime;


    /**
     * 产生一个新的阿里账户
     */
    public static User generateAliUser(String aliId, String aliNick, String aliAvatar) {
        User user = new User();
        user.setAliId(aliId);
        user.setAliNick(aliNick);
        user.setAliAvatar(aliAvatar);
        user.setRole(User.Role.ROLE_USER);
        user.setStatus(Status.OK);

        return user;
    }

    public User() {

    }

    /**
     * 复制构造函数
     */
    public User(User user) {
        id = user.getId();
        status = user.getStatus();
        createTime = user.getCreateTime();


        aliId = user.getAliId();
        aliNick = user.getAliNick();
        aliAvatar = user.getAliAvatar();
        role = user.getRole();
        openid = user.getOpenid();
        subscribe = user.getSubscribe();
        nickname = user.getNickname();
        sex = user.getSex();
        language = user.getLanguage();
        city = user.getCity();
        province = user.getProvince();
        country = user.getCountry();
        headimgurl = user.getHeadimgurl();
        subscribeTime = user.getSubscribeTime();
        unionid = user.getUnionid();
        longitude = user.getLongitude();
        latitude = user.getLatitude();
        accuracy = user.getAccuracy();
        username = user.getUsername();
        password = user.getPassword();
        phone = user.getPhone();
        lastLoginIp = user.getLastLoginIp();
        lastLoginTime = user.getLastLoginTime();
    }


    /**********************************interface UserDetails Start*************************************************/
    /**
     * 用户所拥有的权限，主要是供UserRepositoryUserDetails使用
     *
     * @return Collection
     */
    @JsonIgnore
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<SimpleGrantedAuthority> roles = new HashSet<>();

        if (role == Role.ROLE_USER) {
            roles.add(new SimpleGrantedAuthority(Role.ROLE_USER.getName()));
        } else if (role == Role.ROLE_ADMIN) {
            roles.add(new SimpleGrantedAuthority(Role.ROLE_USER.getName()));
            roles.add(new SimpleGrantedAuthority(Role.ROLE_ADMIN.getName()));
        }


        return roles;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
    /**********************************interface UserDetails End*************************************************/


    /******************************************************
     * CredentialsContainer
     *******************************************************/
    public void eraseCredentials() {
        System.out.println("---------eraseCredentials-----------");
    }

    /*************************************************************************************************************/


    //角色名。特别注意，此处必须是ROLE_开头，不然Oauth就要出错。
    public enum Role {
        ROLE_USER("ROLE_USER"),
        ROLE_ADMIN("ROLE_ADMIN");


        public static final String HAS_ROLE_USER = "hasRole('ROLE_USER')";
        public static final String HAS_ROLE_ADMIN = "hasRole('ROLE_ADMIN')";

        @Getter
        private String name;

        Role(String name) {
            this.name = name;
        }
    }

}
