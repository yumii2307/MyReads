package com.ym.myreads.book;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

public class Bookgetapi2 {

	public static void main(String[] args) {
			String url = "http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbyumii23072054001&QueryType=Bestseller&MaxResults=10&start=1&SearchTarget=Book&output=js&Version=20131101";
		    
		    RestTemplate rt = new RestTemplate();
		    
		    rt.getMessageConverters().add(0, new StringHttpMessageConverter(StandardCharsets.UTF_8));
		    String rsp = rt.getForObject(url, String.class);
		    JSONObject json = new JSONObject(rsp);
		    JSONArray item = json.getJSONArray("item");
		    System.out.println(item.getJSONObject(0).getString("author"));
		    String pubDate = json.getString("pubDate");
	        System.out.println("pubDate: " + pubDate);
	        
	        ArrayList<BookVO> list = new ArrayList<BookVO>();
		    for (int i = 0; i < item.length(); i++) {
		    	BookVO vo = new BookVO();
		    	vo.setAuthor(item.getJSONObject(i).getString("author"));
		    	
		    	list.add(vo);
		    }
		    
		    ModelAndView modelAndView = new ModelAndView("bookList");
	        modelAndView.addObject("pubDate", pubDate);
	        modelAndView.addObject("bookList", list);
	        
	        System.out.println(modelAndView);

	}

}
