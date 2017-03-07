package com.spring.limky.dao;

import java.util.List;

import com.spring.limky.model.Board;


public interface CmsDao {
    
   Boolean insertScrapDao(Board v);
   Board modifyScrapDao(String num);
   Boolean updateBoardDao(Board v);
}

