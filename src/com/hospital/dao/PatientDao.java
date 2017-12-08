package com.hospital.dao;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.hospital.model.Patient;

@Repository
public class PatientDao {

	private static final Logger logger = Logger.getLogger(PatientDao.class);

	@Autowired
	private HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	public void savePatient(Patient patient) {
		logger.info("Saving patient info to DB");
		getTemplate().saveOrUpdate(patient);
	}

	public Patient getPatientDetails(int id) {
		logger.info("Getting patient info from DB");
		return getTemplate().get(Patient.class, id);
	}

	public void deletePatient(Patient patient) {
		logger.info("Deleting patient info from DB");
		getTemplate().delete(patient);
	}

}
