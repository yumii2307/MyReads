package com.ym.myreads.book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("book")
public class BookController {

	@Autowired
	BookService service;

	@RequestMapping("bookList")
	public void bookList(BookVO bookVO, Model model) {
		List<BookVO> list = service.bookList();

		model.addAttribute("list", list);
	}
}
