package com.ym.myreads.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

@Configuration
@EnableScheduling
public class BookInsertScheduler {

	@Autowired
	BookService service;

	@Autowired
	BookConfiguration ttbkey;
	
    @Scheduled(cron = "0 0 0 * * ?")
    public void insert() {
        String key = ttbkey.key();
        service.insert(key);
        System.out.println("Success Get Api.");
    }
}
