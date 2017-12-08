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
public class LoginDao {

	@Autowired
	private SessionFactory factory;
	
	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public User validate(Login login){
		Session session = getFactory().openSession();
		SQLQuery query = session
				.createSQLQuery("select * from user where email='"+login.getEmail()+"' and password='"+login.getPassword()+"'");
		query.addEntity(User.class);
		List<User> user = query.list();
	    return user.size() > 0 ? user.get(0) : null;
	}
}
