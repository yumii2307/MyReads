package com.ym.myreads.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	UserService service;
	
	@RequestMapping("termsAgreement")
	public String termsAgreement() {
		return "user/userSignUp";
	}
	
}
