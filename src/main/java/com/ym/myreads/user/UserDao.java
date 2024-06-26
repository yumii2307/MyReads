package com.ym.myreads.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

	@Autowired
	SqlSessionTemplate my;

	public void userSignUp(UserVO userVO) {
		my.insert("user.userSignUp", userVO);
	}

	public int emailDuplicate(String email) {
		int result = my.selectOne("user.emailDuplicate", email);
		return result;
	}

	public int nicknameConfirm(String nickname) {
		int result = my.selectOne("user.nicknameConfirm", nickname);
		return result;
	}

	public UserVO login(String email) {
		UserVO userVO = my.selectOne("user.login", email);
		return userVO;
	}

}
