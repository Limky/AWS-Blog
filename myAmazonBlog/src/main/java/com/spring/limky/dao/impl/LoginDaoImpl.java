package com.spring.limky.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.limky.dao.LoginDao;
import com.spring.limky.model.User;


@Repository("loginDao")
public class LoginDaoImpl implements LoginDao{
     
	
	@Autowired
    private SqlSession sqlSession;
 
    public void setSqlSession(SqlSession sqlSession){
        this.sqlSession = sqlSession;
    }

	@Override
	public User getUser(User u) {
		// TODO Auto-generated method stub

		String id = u.getUserid();
		User user = (User)sqlSession.selectOne("com.spring.limky.getUser",id);

		if(user==null){
			System.out.print(user);
		return null;
		
		}else{
			
		System.out.print("Å×½ºÆ®"+user.getPassword());
		
		return user;
		}

		

	}
 


 
}
