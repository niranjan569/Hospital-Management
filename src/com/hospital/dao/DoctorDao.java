package com.hospital.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.hospital.model.Doctor;

@Repository
public class DoctorDao {
	
	@Autowired
	private HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	public void saveDoctor(Doctor doctor) {
		getTemplate().saveOrUpdate(doctor);
	}
	
	public Doctor getDoctorDetails(int id)
	{
		return getTemplate().get(Doctor.class, id);
	}
	
	public void deleteDoctor(Doctor doctor)
	{
		getTemplate().delete(doctor);
	}
}
