package com.hospital.controller;

import java.util.Calendar;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hospital.dao.PatientDao;
import com.hospital.dao.UserDao;
import com.hospital.model.Doctor;
import com.hospital.model.Login;
import com.hospital.model.Patient;
import com.hospital.model.User;

@Controller
public class PatientController {

	private static final Logger logger = Logger
			.getLogger(PatientController.class);

	@Autowired
	private PatientDao patientDao;
	
	@Autowired
	private UserDao userdao;
	
	@RequestMapping(value = "/patientlogin", method = RequestMethod.GET)
	public String showDoctorLogin(Model model){
		model.addAttribute("patient", new Patient());
		model.addAttribute("login",new Login());
		return "patientlogin";
	}

	@RequestMapping(value = "/addPatient", method = RequestMethod.POST)
	public ModelAndView savePatient(@ModelAttribute Patient patient,
			BindingResult result) {
		ModelAndView modelAndView = new ModelAndView("patientlogin", "msg",
				"Registeged Sucessfully...");
		logger.info("saving patient info and redirecting to login page");
		patientDao.savePatient(patient);
		return modelAndView;
	}

	@RequestMapping(value = "/updatePatient", method = RequestMethod.GET)
	public ModelAndView getPatient(Model model,@RequestParam("id") int id,@RequestParam("firstName") String firstName,@RequestParam("dateOfBirth") String dateOfBirth) {
		logger.info("Geting patient info");
		Patient patient = patientDao.getPatientDetails(id);
		patient.setFirstName(firstName);
		patient.setDateOfBirth(dateOfBirth);
		patientDao.savePatient(patient);
		List<User> userlist =userdao.listUsers();
		return new ModelAndView("redirect:editsamp","userlist", userlist);
	}

	@RequestMapping(value = "/deletePatient", method = RequestMethod.GET)
	public ModelAndView deletePatient(@RequestParam("id") int id) {
		logger.info("Deleteting patient info");
		Patient patient = patientDao.getPatientDetails(id);
		patientDao.deletePatient(patient);
		List<User> userlist =userdao.listUsers();
		return new ModelAndView("redirect:editsamp","userlist", userlist);
	}
	
}
