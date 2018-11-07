package com.forpet.service.ListPage;

import java.util.List;

import com.forpet.domain.UserVO;

public interface ListPageSercive {

public List<UserVO> SitterListPage(String keyword) throws Exception;

public List<UserVO> ScoreSorting() throws Exception;


}
