package com.spring.limky.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.limky.dao.BlogDao;
import com.spring.limky.model.Board;
import com.spring.limky.model.Book;

@Repository("blogDao")
public class BlogDaoImpl implements BlogDao{
     
    @Autowired
    private SqlSession sqlSession;
 
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }
 
    @Override
    public List<Book> getBookList() {
         
        return sqlSession.selectList("getBookList");
    }

	@Override
	public List<Board> getAndroidList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("getAndroidList");
	}

	@Override
	public List<Board> getJspList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getSpringList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getMysqlList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getDatabaseList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getNetworkList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getOsList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getJavaList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getAlgoList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getLinuxList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Board> getAwsList() {
		// TODO Auto-generated method stub
		return null;
	}
 
}
