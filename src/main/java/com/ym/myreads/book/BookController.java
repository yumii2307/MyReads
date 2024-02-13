package com.ym.myreads.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("book")
public class BookController {

	@Autowired
	BookDao dao;

	@Autowired
	BookService service;

	@Autowired
	BookConfiguration return_key;

	@RequestMapping("bookInsert")
	public String insert() {
		String key = return_key.key();
		try {
			service.insert(key);
			return "book/bookInsert";
		} catch (Exception e) {
			e.printStackTrace();
			return "book/fail";
		}
	}
}
