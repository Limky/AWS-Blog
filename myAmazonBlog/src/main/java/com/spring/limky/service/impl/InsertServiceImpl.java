package com.spring.limky.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;

import com.spring.limky.dao.BlogDao;
import com.spring.limky.dao.InsertDao;
import com.spring.limky.model.Board;
import com.spring.limky.model.Book;
import com.spring.limky.service.BlogService;
import com.spring.limky.service.InsertService;
 
@Service("insetService")
public class InsertServiceImpl implements InsertService {
     
    @Resource(name="insertDao")
    private InsertDao insertDao;

    
	@Override
	public Boolean insertScrapService(Board scrap) {
		long time = System.currentTimeMillis(); 
		SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		String str = dayTime.format(new Date(time));
		scrap.setDate(str);
		
		insertDao.insertScrapDao(scrap);
		// TODO Auto-generated method stub
		return null;
		
		
		
	}
 

 
 
}