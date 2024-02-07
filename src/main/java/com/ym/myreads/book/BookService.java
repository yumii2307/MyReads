package com.ym.myreads.book;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {

	@Autowired
	BookDao dao;
	
	@Autowired
	SqlSessionTemplate my;
}
