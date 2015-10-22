package com.autolab.api.model;

import com.autolab.api.model.User.Role;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(User.class)
public abstract class User_ extends com.autolab.api.model.BaseEntity_ {

	public static volatile SingularAttribute<User, String> country;
	public static volatile SingularAttribute<User, Role> role;
	public static volatile SingularAttribute<User, String> unionid;
	public static volatile SingularAttribute<User, Long> subscribeTime;
	public static volatile SingularAttribute<User, String> aliAvatar;
	public static volatile SingularAttribute<User, Integer> subscribe;
	public static volatile SingularAttribute<User, String> city;
	public static volatile SingularAttribute<User, String> openid;
	public static volatile SingularAttribute<User, String> sex;
	public static volatile SingularAttribute<User, Double> latitude;
	public static volatile SingularAttribute<User, Double> accuracy;
	public static volatile SingularAttribute<User, String> language;
	public static volatile SingularAttribute<User, String> lastLoginIp;
	public static volatile SingularAttribute<User, String> aliId;
	public static volatile SingularAttribute<User, Date> lastLoginTime;
	public static volatile SingularAttribute<User, String> password;
	public static volatile SingularAttribute<User, String> province;
	public static volatile SingularAttribute<User, String> aliNick;
	public static volatile SingularAttribute<User, String> phone;
	public static volatile SingularAttribute<User, String> nickname;
	public static volatile SingularAttribute<User, String> headimgurl;
	public static volatile SingularAttribute<User, Double> longitude;
	public static volatile SingularAttribute<User, String> username;

}

