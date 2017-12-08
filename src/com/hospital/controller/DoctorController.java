package com.hospital.controller;

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

import com.hospital.dao.DoctorDao;
import com.hospital.dao.UserDao;
import com.hospital.model.Doctor;
import com.hospital.model.Login;
import com.hospital.model.User;



@Controller
public class DoctorController {

	private static final Logger logger = Logger
			.getLogger(DoctorController.class);

	@Autowired
	private DoctorDao dao;
	@Autowired
	private UserDao userdao;
	
	@RequestMapping(value = "/doctorlogin", method = RequestMethod.GET)
	public String showDoctorLogin(Model model){
		model.addAttribute("doctor", new Doctor());
		model.addAttribute("login",new Login());
		return "doctorlogin";
	}

	@RequestMapping(value = "/editsamp", method = RequestMethod.GET)
	public ModelAndView showPatientList(){
		List<User> userlist =userdao.listUsers();
		ModelAndView modelAndView =new ModelAndView("editsamp","userlist", userlist);
		return modelAndView;
	}

	
	@RequestMapping(value = "/addDoctor", method = RequestMethod.POST)
	public ModelAndView saveDoctor(@ModelAttribute("doctor") Doctor doctor,
			BindingResult result) {
		logger.info("saving doctor info and redirecting to login page");
		ModelAndView modelAndView = new ModelAndView("doctorlogin", "msg",
				"Registeged Sucessfully...");
		dao.saveDoctor(doctor);
		return modelAndView;
	}

	@RequestMapping(value = "/getDoctor", method = RequestMethod.GET)
	public void getDoctor(@RequestParam("id") int id) {
		logger.info("getting doctor info");
		Doctor doctor = dao.getDoctorDetails(id);
		System.out.println(doctor.getLastName());
	}

	@RequestMapping(value = "/deleteDoctor", method = RequestMethod.GET)
	public void deleteDoctor(@RequestParam("id") int id) {
		logger.info("Deleting doctor");
		Doctor doctor = dao.getDoctorDetails(id);
		dao.deleteDoctor(doctor);
	}
}
