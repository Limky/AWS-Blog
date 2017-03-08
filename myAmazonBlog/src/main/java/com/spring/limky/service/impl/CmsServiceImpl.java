package com.spring.limky.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;

import com.spring.limky.dao.CmsDao;
import com.spring.limky.model.Scrap;
import com.spring.limky.service.CmsService;
 
@Service("cmsService")
public class CmsServiceImpl implements CmsService {
     
    @Resource(name="cmsDao")
    private CmsDao cmsDao;

    private List<Scrap> scrapList = new ArrayList<Scrap>();
    
	@Override
	public List<Scrap> getScrapListService(String s) {
		// TODO Auto-generated method stub
		
    	scrapList = cmsDao.getScrapListDao(s);
		if(scrapList != null){
			return scrapList;
		}else{
			
			return null;
		}
	}
    
    
	@Override
	public Boolean insertScrapService(Scrap scrap) {
	
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
	public Scrap getModifidScrapService(String num) {
		// TODO Auto-generated method stub
			
		return  cmsDao.getModifidScrapDao(num);
	}


	@Override
	public Boolean updateScrapService(Scrap v) {
		// TODO Auto-generated method stub
		System.out.println(v.toString());
		return cmsDao.updateScrapDao(v);
	}


 
}