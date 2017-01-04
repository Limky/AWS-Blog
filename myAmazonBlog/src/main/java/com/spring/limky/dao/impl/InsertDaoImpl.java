package com.spring.limky.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.limky.dao.BlogDao;
import com.spring.limky.dao.InsertDao;
import com.spring.limky.model.Board;
import com.spring.limky.model.Book;

@Repository("insertDao")
public class InsertDaoImpl implements InsertDao{
     
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


 
}
