package com.ym.myreads.book;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

import org.json.XML;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.client.RestTemplate;

public class Bookgetapi2 {

	public static void main(String[] args) {
			String url = "http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbyumii23072054001&QueryType=Bestseller&MaxResults=60&start=1&SearchTarget=Book&output=xml&Version=20131101";
		    
		    RestTemplate rt = new RestTemplate();
		    
		    rt.getMessageConverters().add(0, new StringHttpMessageConverter(StandardCharsets.UTF_8));
		    String rsp = rt.getForObject(url, String.class);
		    System.out.println(XML.toJSONObject(rsp));

	}

}
