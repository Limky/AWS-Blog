package com.spring.limky.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;

import com.spring.limky.dao.LoginDao;
import com.spring.limky.model.User;
import com.spring.limky.service.LoginService;

 
@Service("loginService")
public class LoginServiceImpl implements LoginService {
     
    @Resource(name="loginDao")
    private LoginDao loginDao;

    
	@Override
	public Boolean getUser(User u) {
		// TODO Auto-generated method stub
		User user = loginDao.getUser(u);
		
		if(user.getPassword().equals(u.getPassword())){	
			return true;
		}else{
			return false;
		}
	
	}

    

 

 
 
}