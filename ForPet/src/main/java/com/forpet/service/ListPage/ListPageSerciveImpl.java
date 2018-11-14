package com.forpet.service.ListPage;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.UserVO;
import com.forpet.domain.listDTO;
import com.forpet.persistence.listPage.ListPageDAO;

@Service
public class ListPageSerciveImpl implements ListPageSercive {

	@Inject
	private ListPageDAO dao;
	
	@Override
	public List<listDTO> SitterListPage(String keyword) throws Exception {
		return dao.SitterListPage(keyword);
	}

	@Override
	public List<UserVO> ScoreSorting() throws Exception {
		return dao.ScoreSorting();
	}



}

