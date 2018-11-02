package com.forpet.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.BookingVO;
import com.forpet.persistence.BookingScheduleDAO;

@Service
public class BookingScheduleServiceImpl implements BookingScheduleService {
	
	@Inject
	private BookingScheduleDAO bsDAO;

	@Override
	public List<BookingVO> findCalendarListAll(Integer sitterNumber) throws Exception {
		return bsDAO.findCalendarListAll(sitterNumber);
	}

	@Override
	public List<BookingVO> bookingDetailInform(Integer bookingNumber) throws Exception {
		return bsDAO.bookingDetailInform(bookingNumber);
	}

	@Override
	public void bookingConfirm(BookingVO vo) throws Exception {
		bsDAO.bookingConfirm(vo);
	}
	
	@Override
	public void delete(Integer bookingNumber) throws Exception {
		bsDAO.delete(bookingNumber);
	}
}
