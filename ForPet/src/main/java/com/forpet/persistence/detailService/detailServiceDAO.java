package com.forpet.persistence.detailService;

import java.util.List;

import com.forpet.domain.SitterDTO;

public interface detailServiceDAO {
	
	public List<SitterDTO> findSitterSchedule(Integer sitterNumber) throws Exception;
	
}
