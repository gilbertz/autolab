package com.autolab.api.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(RelateClass.class)
public abstract class RelateClass_ extends com.autolab.api.model.BaseEntity_ {

	public static volatile SingularAttribute<RelateClass, User> teacher;
	public static volatile SingularAttribute<RelateClass, User> student;
	public static volatile SingularAttribute<RelateClass, Class> myClass;

}

