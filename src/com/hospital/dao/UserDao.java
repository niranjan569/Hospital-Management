package com.hospital.dao;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hospital.model.Login;
import com.hospital.model.User;

@Repository
public class UserDao {

	@Autowired
	private SessionFactory factory;
	
	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public List listUsers(){
		Session session = getFactory().openSession();
		SQLQuery query = session
				.createSQLQuery("select * from user where type='patient'");
		query.addEntity(User.class);
		List<User> user = query.list();
	    return user;
	}
}
