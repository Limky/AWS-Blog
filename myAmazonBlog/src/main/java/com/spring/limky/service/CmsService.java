package com.spring.limky.service;

import java.util.List;

import com.spring.limky.model.Board;
import com.spring.limky.model.Book;

public interface CmsService {
    
    Boolean insertScrapService(Board v);
    Board modifyScrapService(String num);
    Boolean updateBoardService(Board v);
}