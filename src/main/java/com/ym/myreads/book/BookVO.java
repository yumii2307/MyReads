package com.ym.myreads.book;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookVO {
	
	private String getApiDate;
	private int itemId;
	private String title;
	private String link;
	private String author;
	private String pubDate;
	private String description;
	private String isbn;
	private String isbn13;
	private int priceSales;
	private int priceStandard;
	private String cover;
	private int categoryId;
	private String categoryName;
	private String publisher;
	private Boolean adult;
	private int customerReviewRank;
	private String subTitle;
	private String originalTitle;
	private int itemPage;
	private String styleDesc;
	private int weight;
	private int sizeDepth;
	private int sizeHeight;
	private int sizeWidth;
	private int bestRank;
	private int type;

}
