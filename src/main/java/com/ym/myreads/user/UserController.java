package com.ym.myreads.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	UserService service;
	
	@RequestMapping("termsAgreement")
	public String termsAgreement() {
		return "user/userSignUp";
	}
	
	@RequestMapping("userSignUp")
	public String userSignUp(UserVO userVO) {
		service.userSignUp(userVO);
		
		return "user/userSignUpDone";
	}
	
	@RequestMapping("emailDuplicate")
	@ResponseBody
	public String emailDuplicate(String email) {
		int result = service.emailDuplicate(email);
		return String.valueOf(result);
	}
	
	@RequestMapping("nicknameConfirm")
	@ResponseBody
	public String nicknameConfirm(String nickname) {
		int result = service.nicknameConfirm(nickname);
		return String.valueOf(result);
	}
	
}
