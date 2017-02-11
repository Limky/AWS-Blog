package com.spring.limky.dao;

import java.util.List;

import com.spring.limky.model.Board;

public interface LatestRecordDao {
	List<Board> getLatestRecordList();
}
