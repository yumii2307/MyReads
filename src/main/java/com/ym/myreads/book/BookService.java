package com.ym.myreads.book;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {

	@Autowired
	BookDao dao;

	@Autowired
	SqlSessionTemplate my;
	
	@Autowired
	BookConfiguration ttbkey;

	public void insert(String key) {
		BookGetApi api = new BookGetApi();
		String[] queryTypes = { "Bestseller", "ItemNewAll", "ItemNewSpecial" };

		dao.delete();

		for (String queryType : queryTypes) {
			ArrayList<BookVO> list = api.parse(queryType, key);
	        for (BookVO book : list) {
	            dao.insert(book);
			}
		}
	}

	public List<BookVO> bookList() {
		return dao.bookList();
	}
	
	public List<BookVO> bookAllList(int type) {
		return dao.bookAllList(type);
	}

	public BookVO bookDetail(BookVO bookVO) {
		return dao.bookDetail(bookVO);
	}

	public ArrayList<BookVO> bookSearch(String queryType, String query, String key) {
		BookSearchList search = new BookSearchList();
		key = ttbkey.key();
		ArrayList<BookVO> list = search.parse(queryType, query, key);
		return list;
	}

	public void writeReviewDone(BookReviewVO bookReviewVO) {
		dao.writeReviewDone(bookReviewVO);
	}

}
