package com.forpet.service.detailService;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.SitterDTO;
import com.forpet.persistence.detailService.detailServiceDAO;

@Service
public class detailServiceImpl implements detailService{
	@Inject
	private detailServiceDAO dao;

	@Override
	public List<SitterDTO> findSitterSchedule(Integer sitterNumber) throws Exception {
		return dao.findSitterSchedule(sitterNumber);
	}

}
