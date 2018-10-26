package com.forpet.persistence;

import java.util.List;

import com.forpet.domain.BookingScheduleVO;

public interface BookingScheduleDAO {
	
	public List<BookingScheduleVO> findCalendarListAll(Integer userNumber) throws Exception;

}
