package com.spring.limky.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.limky.dao.BlogDao;
import com.spring.limky.dao.CmsDao;
import com.spring.limky.model.Board;
import com.spring.limky.model.Book;

@Repository("cmsDao")
public class CmsDaoImpl implements CmsDao{
     
    @Autowired
    private SqlSession sqlSession;
 
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 

	@Override
	public Boolean insertScrapDao(Board v) {
		// TODO Auto-generated method stub
		System.out.println(v.getContents());
		sqlSession.insert("insert",v);
		
		return null;
	}


	@Override
	public Board modifyScrapDao(String num) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne("selectOne",num);
	}


	@Override
	public Boolean updateBoardDao(Board v) {
		// TODO Auto-generated method stub	
    	int modifidRowNum = sqlSession.update("updateBoard", v);
		if(modifidRowNum > 0){			
			return true;
		
		}else{		
			return false;
		}
	 
	}


 
}
