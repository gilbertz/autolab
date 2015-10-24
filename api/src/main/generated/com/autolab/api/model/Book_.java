package com.autolab.api.model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value = "org.hibernate.jpamodelgen.JPAMetaModelEntityProcessor")
@StaticMetamodel(Book.class)
public abstract class Book_ extends com.autolab.api.model.BaseEntity_ {

	public static volatile SingularAttribute<Book, String> grade;
	public static volatile SingularAttribute<Book, Batch> batch;
	public static volatile SingularAttribute<Book, User> user;

}

