package com.forpet.service;

import java.util.List;

import com.forpet.domain.BookingVO;

public interface BookingScheduleService {
	
	public List<BookingVO> findCalendarListAll(Integer sitterNumber) throws Exception;

	public List<BookingVO> bookingDetailInform(Integer bookingNumber) throws Exception;
	
	public void bookingConfirm(BookingVO vo) throws Exception;
	
	public void delete(Integer bookingNumber) throws Exception;
}
