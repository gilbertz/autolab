package com.autolab.api.model;

import com.autolab.api.model.User.Role;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(User.class)
public abstract class User_ extends com.autolab.api.model.BaseEntity_ {

	public static volatile SingularAttribute<User, String> jaccountUid;
	public static volatile SingularAttribute<User, String> password;
	public static volatile SingularAttribute<User, Role> role;
	public static volatile SingularAttribute<User, String> jaccountChinesename;
	public static volatile SingularAttribute<User, String> jaccountStudent;
	public static volatile SingularAttribute<User, String> jaccountId;
	public static volatile SingularAttribute<User, String> jaccountDept;
	public static volatile SingularAttribute<User, String> username;

}

