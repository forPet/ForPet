package com.forpet.persistence.listPage;

import java.util.List;

import com.forpet.domain.UserVO;
import com.forpet.domain.listDTO;

public interface ListPageDAO {

	public List<listDTO> SitterListPage(String keyword) throws Exception;
	
	public List<UserVO> ScoreSorting() throws Exception;

}
