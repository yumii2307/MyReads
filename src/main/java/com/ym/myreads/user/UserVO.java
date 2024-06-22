package com.ym.myreads.user;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVO {

	private int no;
	private String email;
	private String password;
	private String name;
	private String nickname;
	private String created_at;
	
}
