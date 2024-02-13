package com.ym.myreads.book;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookService {

	@Autowired
	BookDao dao;

	@Autowired
	SqlSessionTemplate my;

	public void insert(String key) {
		BookGetApi api = new BookGetApi();
		String[] queryTypes = { "Bestseller", "ItemNewAll", "ItemNewSpecial" };

		for (String queryType : queryTypes) {
			ArrayList<BookVO> list = api.parse(queryType, key);
			System.out.println(list);
			for (int i = 0; i < list.size(); i++) {
				dao.insert(list.get(i));
			}
		}
	}
}
