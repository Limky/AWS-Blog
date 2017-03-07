package com.spring.limky.service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;

import com.spring.limky.dao.BlogDao;
import com.spring.limky.dao.CmsDao;
import com.spring.limky.model.Board;
import com.spring.limky.model.Book;
import com.spring.limky.service.BlogService;
import com.spring.limky.service.CmsService;
 
@Service("cmsService")
public class CmsServiceImpl implements CmsService {
     
    @Resource(name="cmsDao")
    private CmsDao cmsDao;

    
	@Override
	public Boolean insertScrapService(Board scrap) {
//		long time = System.currentTimeMillis(); 
//		SimpleDateFormat dayTime = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
//		String str = dayTime.format(new Date(time));
//		scrap.setDate(str);
//		
//		System.out.println("½Ã°£ Test:"+str);
		
		Calendar calendar = Calendar.getInstance();
     	 java.util.Date date = calendar.getTime();
        String today = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date));
        scrap.setDate(today);
		System.out.println("New scrap updated at :"+today);
		cmsDao.insertScrapDao(scrap);
		
		// TODO Auto-generated method stubs
		return null;
		
		
		
	}


	@Override
	public Board modifyScrapService(String num) {
		// TODO Auto-generated method stub
			
		return  cmsDao.modifyScrapDao(num);
	}


	@Override
	public Boolean updateBoardService(Board v) {
		// TODO Auto-generated method stub
		System.out.println(v.toString());
		return cmsDao.updateBoardDao(v);
	}
 

 
 
}