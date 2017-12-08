package com.hospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hospital.dao.LoginDao;
import com.hospital.model.Doctor;
import com.hospital.model.Login;
import com.hospital.model.Patient;
import com.hospital.model.User;

@Controller
public class LoginController {

	@Autowired
	private LoginDao dao;
	
	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView saveDoctor(@ModelAttribute("login") Login login,
			BindingResult result,@RequestParam("identifier") String identifier) {
		ModelAndView mav = null;
	    User user = dao.validate(login);
	    if (null != user) {
	    	
	    	if(user.getDiscriminatorValue().equals("doctor"))
	    		mav = new ModelAndView("doctorform","name",user.getFirstName());
	    	else if(user.getDiscriminatorValue().equals("patient"))
	    		mav = new ModelAndView("patientappointment","name",user.getFirstName());
	    	else
	    		mav = new ModelAndView("adminform","name",user.getFirstName());
	    } else {
	    	if(identifier.equals("doctor"))
	    	mav = new ModelAndView("doctorlogin","msg","Incorrect credentials");
	    	else if (identifier.equals("patient")) {
	    		mav = new ModelAndView("patientlogin","msg","Incorrect credentials");
			}
	    	else
	    		mav = new ModelAndView("technicianlogin","msg","Incorrect credentials");
	    }
	   
	    return mav;
	}
}
