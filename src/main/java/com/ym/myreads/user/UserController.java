package com.ym.myreads.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	UserService service;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("termsAgreement")
	public String termsAgreement() {
		return "user/userSignUp";
	}
	
	@RequestMapping("userSignUp")
	public String userSignUp(UserVO userVO) {
		userVO.setPassword(passwordEncoder.encode(userVO.getPassword()));
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
	
	@RequestMapping("login")
	@ResponseBody
	public UserVO login(HttpSession session, String email, String password, Model model) {
	    UserVO userVO = service.login(email);
	    if (userVO != null && userVO.getPassword() != null && passwordEncoder.matches(password, userVO.getPassword())) {
	        session.setAttribute("email", email);
	        return userVO;
	    } else {
	    	return null;
	    }
	}
}
