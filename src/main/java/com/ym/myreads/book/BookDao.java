package com.ym.myreads.book;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDao {

	@Autowired
	SqlSessionTemplate my;

	public void insert(BookVO bookVO) {
		my.insert("book.insert", bookVO);
	}
}
