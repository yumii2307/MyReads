package com.ym.myreads.user;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

	@Autowired
	UserDao dao;

	@Autowired
	SqlSessionTemplate my;

	public List<UserVO> userSignUp() {
		return dao.userSignUp();
	}
}
