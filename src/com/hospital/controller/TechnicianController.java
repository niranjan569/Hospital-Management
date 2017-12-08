package com.hospital.controller;

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

import com.hospital.dao.TechnicianDao;
import com.hospital.model.Login;
import com.hospital.model.Patient;
import com.hospital.model.Technician;

@Controller
public class TechnicianController {

	private static final Logger logger = Logger
			.getLogger(TechnicianController.class);

	@Autowired
	private TechnicianDao dao;

	@RequestMapping(value = "/technicianlogin", method = RequestMethod.GET)
	public String showDoctorLogin(Model model){
		model.addAttribute("patient", new Technician());
		model.addAttribute("login",new Login());
		return "adminlogin";
	}
	
	@RequestMapping(value = "/addTechnician", method = RequestMethod.POST)
	public ModelAndView saveTechnician(@ModelAttribute Technician technician,
			BindingResult result) {
		ModelAndView modelAndView = new ModelAndView("adminlogin", "msg",
				"Registeged Sucessfully...");
		dao.saveTechnician(technician);
		logger.info("saving technician info and redirecting to login page");
		return modelAndView;
	}

	@RequestMapping(value = "/getTechnician", method = RequestMethod.GET)
	public void getTechnician(@RequestParam("id") int id) {
		logger.info("geting patient info");
		Technician technician = dao.getTechnicianDetails(id);
		System.out.println(technician.getLastName());
	}

	@RequestMapping(value = "/deleteTechnician", method = RequestMethod.GET)
	public void deleteTechnician(@RequestParam("id") int id) {
		logger.info("Deleting Technician info");
		Technician technician = dao.getTechnicianDetails(id);
		dao.deleteTechnician(technician);
	}
}
