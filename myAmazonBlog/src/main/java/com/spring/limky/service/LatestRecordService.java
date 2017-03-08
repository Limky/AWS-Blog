package com.spring.limky.service;

import java.util.List;

import com.spring.limky.model.Scrap;

public interface LatestRecordService {
	
	List<Scrap> getLatestRecordList();
}
