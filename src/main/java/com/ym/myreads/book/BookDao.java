package com.ym.myreads.book;

import java.util.List;

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
	
	public void delete() {
		my.delete("book.delete");
	}

	public List<BookVO> bookList() {
		return my.selectList("book.bookList");
	}

}
