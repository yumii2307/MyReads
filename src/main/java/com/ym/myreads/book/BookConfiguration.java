package com.ym.myreads.book;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@PropertySource("classpath:key.properties")
@Configuration
public class BookConfiguration {
	
	@Value("${aladin.ttbkey}")
	private String ttbkey;
	
	@Bean
	public String ttbkey() {
		return ttbkey;
	}

}
