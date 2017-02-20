package com.spring.limky.service.impl;

import java.util.List;

import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;

import com.spring.limky.dao.BlogDao;
import com.spring.limky.model.Board;
import com.spring.limky.model.Book;
import com.spring.limky.service.BlogService;
 
@Service("blogService")
public class BlogServiceImpl implements BlogService {
     
    @Resource(name="blogDao")
    private BlogDao blogDao;
 
    @Override
    public List<Book> getBookList() {
        return blogDao.getBookList();
    }
    @Override
    public List<Board> getAndroidList() {
        return blogDao.getAndroidList();
    }
    @Override
    public List<Board> getJspList() {
		return null;
    }
    @Override
    public List<Board> getSpringList() {
		return null;
    }
    @Override
    public List<Board> getMysqlList() {
		return null;
    }
    @Override
    public List<Board> getDatabaseList() {
		return null;
    }
    @Override
    public List<Board> getNetworkList() {
		return null;
    }
    @Override
    public List<Board> getOsList() {
		return null;
    }
    @Override
    public List<Board> getJavaList() {
		return null;
    }
    @Override
    public List<Board> getAlgoList() {
		return null;
    }
    @Override
    public List<Board> getLinuxList() {
		return null;
    }
    @Override
    public List<Board> getAwsList() {
		return null;
    }
	@Override
	public List<Board> getList(String s) {
		// TODO Auto-generated method stub
		
		return blogDao.getList(s);
	}
    
 
}