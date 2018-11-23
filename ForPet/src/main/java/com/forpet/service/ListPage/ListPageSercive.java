package com.forpet.service.ListPage;

import java.util.List;

import com.forpet.domain.UserVO;
import com.forpet.domain.ListDTO;

public interface ListPageSercive {

public List<ListDTO> SitterListPage(String keyword) throws Exception;

public List<UserVO> ScoreSorting() throws Exception;


}
