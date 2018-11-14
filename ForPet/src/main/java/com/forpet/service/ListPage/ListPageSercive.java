package com.forpet.service.ListPage;

import java.util.List;

import com.forpet.domain.UserVO;
import com.forpet.domain.listDTO;

public interface ListPageSercive {

public List<listDTO> SitterListPage(String keyword) throws Exception;

public List<UserVO> ScoreSorting() throws Exception;


}
