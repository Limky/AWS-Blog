package com.spring.limky.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.spring.limky.dao.CmsDao;
import com.spring.limky.model.Scrap;


@Repository("cmsDao")
public class CmsDaoImpl implements CmsDao{
     
    @Autowired
    private SqlSession sqlSession;
    private List<Scrap> scrapList = new ArrayList<Scrap>();
    
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 
	@Override
	public List<Scrap> getScrapListDao(String subject) {
		// TODO Auto-generated method stub
		scrapList = sqlSession.selectList("getList",subject);
		
		if(scrapList != null){
			return scrapList;
		
		}else{
			return null;
		}
	}
	

	@Override
	public Boolean insertScrapDao(Scrap v) {
		// TODO Auto-generated method stub
		System.out.println(v.getContents());
		sqlSession.insert("insert",v);
		
		return null;
	}


	@Override
	public Scrap getModifiedScrapDao(String num) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne("selectOne",num);
	}


	@Override
	public Boolean updateScrapDao(Scrap v) {
		// TODO Auto-generated method stub	
    	int modifidRowNum = sqlSession.update("updateScrap", v);
		if(modifidRowNum > 0){			
			return true;
		
		}else{		
			return false;
		}
	 
	}

	@Override
	public Boolean deleteScrapDao(String v) {
		// TODO Auto-generated method stub
		System.out.println("»èÁ¦ÇÒ ³ð:"+v);
		 int modifidRowNum = sqlSession.delete("deleteScrap",v);
		 if(modifidRowNum > 0){			
				return true;
			
			}else{		
				return false;
			}
		 
	}





 
}
