package com.hospital.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.hospital.model.Technician;

@Repository
public class TechnicianDao {

	@Autowired
	private HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	public void saveTechnician(Technician technician) {
		getTemplate().saveOrUpdate(technician);
	}
	
	public Technician getTechnicianDetails(int id)
	{
		return getTemplate().get(Technician.class, id);
	}
	
	public void deleteTechnician(Technician technician)
	{
		getTemplate().delete(technician);
	}
}
