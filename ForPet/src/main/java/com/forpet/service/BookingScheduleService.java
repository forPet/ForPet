package com.forpet.service;

import java.util.List;

import com.forpet.domain.BookingScheduleVO;

public interface BookingScheduleService {
	
	public List<BookingScheduleVO> findCalendarListAll(Integer userNumber) throws Exception;

}
