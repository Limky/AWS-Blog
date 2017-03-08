package com.spring.limky.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.limky.dao.LatestRecordDao;
import com.spring.limky.model.Scrap;

@Repository("latestRecordDao")
public class LatestRecordDaoImpl implements LatestRecordDao {

	@Autowired
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<Scrap> getLatestRecordList() {
		// TODO Auto-generated method stub
		List<Scrap> latestRecord = sqlSession.selectList("getLatestRecordList");
		// System.out.println("TEST LATEST : ");

		if (latestRecord != null) {
			for (int i = 0; i < latestRecord.size(); i++)
			System.out.println("TEST LATEST : " + latestRecord.get(i).getDate());
			
			return latestRecord;

		} else {

			return null;

		}

	}

}
