package com.ym.myreads.book;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.web.client.RestTemplate;

public class BookSearchList {

	public ArrayList<BookVO> parse(String queryType, String query, String key) {
		String url = "https://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=" + key + "&Query=" + query + "&QueryTyp=" + queryType; //author, publisher
	    String param = "&MaxResults=50&start=1&SearchTarget=Book&output=js&Version=20131101";
	    
	    RestTemplate rt = new RestTemplate();
	    rt.getMessageConverters().add(0, new StringHttpMessageConverter(StandardCharsets.UTF_8));

	    String rsp = rt.getForObject(url + param, String.class);
	    JSONObject json = new JSONObject(rsp);
	    JSONArray item = json.getJSONArray("item");
	    
	    ArrayList<BookVO> list = new ArrayList<BookVO>();
	    for (int i = 0; i < item.length(); i++) {
	    	BookVO vo = new BookVO();
	    	vo.setAuthor(item.getJSONObject(i).getString("author"));
	    	vo.setIsbn(item.getJSONObject(i).optString("isbn"));
	    	vo.setLink(item.getJSONObject(i).getString("link"));
	    	vo.setDescription(item.getJSONObject(i).getString("description"));
	    	vo.setTitle(item.getJSONObject(i).getString("title"));
	    	vo.setPubDate(item.getJSONObject(i).getString("pubDate"));
	    	vo.setCategoryName(item.getJSONObject(i).getString("categoryName"));
	    	vo.setCustomerReviewRank(item.getJSONObject(i).getInt("customerReviewRank"));
	    	vo.setCover(item.getJSONObject(i).getString("cover"));
	    	vo.setItemId(item.getJSONObject(i).getInt("itemId"));
	    	vo.setIsbn13(item.getJSONObject(i).optString("isbn13"));
	    	vo.setPublisher(item.getJSONObject(i).getString("publisher"));
	    	vo.setPriceSales(item.getJSONObject(i).getInt("priceSales"));
	    	vo.setAdult(item.getJSONObject(i).getBoolean("adult"));
	    	vo.setCategoryId(item.getJSONObject(i).getInt("categoryId"));
	    	vo.setPriceStandard(item.getJSONObject(i).getInt("priceStandard"));
	    	
	    	list.add(vo);
	    }
	    
	    return list;
	}
	
}
