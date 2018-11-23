package com.forpet.persistence.listPage;

import java.util.List;

import com.forpet.domain.ListDTO;
import com.forpet.domain.UserVO;

public interface ListPageDAO {

	public List<ListDTO> SitterListPage(String keyword) throws Exception;
	
	public List<UserVO> ScoreSorting() throws Exception;

}
