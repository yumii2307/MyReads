package com.ym.myreads.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	UserDao dao;

	@Autowired
	SqlSessionTemplate my;

	public void userSignUp(UserVO userVO) {
		dao.userSignUp(userVO);
	}

	public int emailDuplicate(String email) {
		int result = dao.emailDuplicate(email);
		return result;
	}

	public int nicknameConfirm(String nickname) {
		int result = dao.nicknameConfirm(nickname);
		return result;
	}

	public UserVO login(String email) {
		UserVO userVO = dao.login(email);
		return userVO;
	}
}
