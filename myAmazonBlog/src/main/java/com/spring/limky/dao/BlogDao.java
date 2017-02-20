package com.spring.limky.dao;

import java.util.List;

import com.spring.limky.model.Board;
import com.spring.limky.model.Book;

public interface BlogDao {
    
    List<Book> getBookList();
    
    List<Board> getList(String s);
    
	List<Board> getAndroidList();
	
	List<Board> getJspList();
	
	List<Board> getSpringList();
	
	List<Board> getMysqlList();
	
	List<Board> getDatabaseList();
	
	List<Board> getNetworkList();
	
	List<Board> getOsList();
	
	List<Board> getJavaList();
	
	List<Board> getAlgoList();
	
	List<Board> getLinuxList();
	
	List<Board> getAwsList();
}

