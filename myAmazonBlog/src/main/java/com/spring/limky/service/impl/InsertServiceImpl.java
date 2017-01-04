package com.spring.limky.service.impl;

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
		insertDao.insertScrapDao(scrap);
		// TODO Auto-generated method stub
		return null;
		
		
		
	}
 

 
 
}