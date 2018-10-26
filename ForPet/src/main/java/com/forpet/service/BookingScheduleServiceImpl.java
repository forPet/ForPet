package com.forpet.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.forpet.domain.BookingScheduleVO;
import com.forpet.persistence.BookingScheduleDAO;

@Service
public class BookingScheduleServiceImpl implements BookingScheduleService {
	
	@Inject
	private BookingScheduleDAO bsDAO;

	@Override
	public List<BookingScheduleVO> findCalendarListAll(Integer userNumber) throws Exception {
		List<BookingScheduleVO> list = bsDAO.findCalendarListAll(userNumber);
		return list;
	}
	
}
