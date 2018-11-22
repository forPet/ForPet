package com.forpet.service.detailService;

import java.util.List;

import com.forpet.domain.SitterDTO;

public interface detailService {
	
	public List<SitterDTO> findSitterSchedule(Integer sitterNumber) throws Exception;
	
}
