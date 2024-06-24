package com.ym.myreads.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

	@Autowired
	SqlSessionTemplate my;

	public List<UserVO> userSignUp() {
		return my.selectList("user.userSignUp");
	}

}
