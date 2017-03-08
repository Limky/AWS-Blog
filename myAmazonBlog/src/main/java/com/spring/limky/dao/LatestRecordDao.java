package com.spring.limky.dao;

import java.util.List;

import com.spring.limky.model.Scrap;

public interface LatestRecordDao {
	List<Scrap> getLatestRecordList();
}
