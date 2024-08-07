package com.ym.myreads.book;

import java.util.ArrayList;
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
	public void bookList(Model model) {
		List<BookVO> list = service.bookList();

		model.addAttribute("list", list);
	}
	
	@RequestMapping("bookAllList")
	public void bookAllList(int type, Model model) {
		List<BookVO> list = service.bookAllList(type);
		
		model.addAttribute("list", list);
	}
	
	@RequestMapping("bookDetail")
	public void bookDetail(BookVO bookVO, Model model) {
		BookVO vo = service.bookDetail(bookVO);
		
		model.addAttribute("vo", vo);
	}
	
	@RequestMapping("writeReview")
	public ArrayList<BookVO> writeReview(String queryType, String query, String key, Model model) {
		ArrayList<BookVO> list = service.bookSearch(queryType, query, key);
		
		model.addAttribute("list", list);
		return list;
	}
	
	@RequestMapping("writeReviewDone")
	public void writeReviewDone(BookReviewVO bookReviewVO) {
		service.writeReviewDone(bookReviewVO);
	}
	
	@RequestMapping("bookSearch")
	public ArrayList<BookVO> bookSearch(String queryType, String query, String key, Model model) {
		ArrayList<BookVO> list = service.bookSearch(queryType, query, key);
		
		model.addAttribute("list", list);
		return list;
	}
	
}
