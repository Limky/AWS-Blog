package com.spring.limky.service;

import java.util.List;

import com.spring.limky.model.Scrap;


public interface CmsService {
    
    Boolean insertScrapService(Scrap v);
    Scrap getModifidScrapService(String n);
    Boolean updateScrapService(Scrap v);
    Boolean deleteScrapService(String n);
    List<Scrap> getScrapListService(String s);
}