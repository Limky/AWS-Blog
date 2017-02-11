package com.spring.limky.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.limky.dao.LatestRecordDao;
import com.spring.limky.model.Board;
import com.spring.limky.service.LatestRecordService;

@Service("latestRecordService")
public class LatestRecordServiceImpl implements LatestRecordService {

	@Resource(name="latestRecordDao")
    private LatestRecordDao latestRecordDao;
		
	@Override
	public List<Board> getLatestRecordList() {
		// TODO Auto-generated method stub	
		return latestRecordDao.getLatestRecordList();
	}
	
	
}
