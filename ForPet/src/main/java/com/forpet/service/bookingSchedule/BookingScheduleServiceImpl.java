package com.forpet.service.bookingSchedule;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.BookingVO;
import com.forpet.domain.TimelineVO;
import com.forpet.persistence.bookingSchedule.BookingScheduleDAO;

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
	public void bookingCancel(Integer bookingNumber) throws Exception {
		bsDAO.bookingCancel(bookingNumber);
	}

	@Override
	public void bookingCancelReturnResult(BookingVO vo) throws Exception {
		bsDAO.bookingCancelReturnResult(vo);
	}

	@Override
	public void cancelComment(BookingVO vo) throws Exception {
		bsDAO.cancelComment(vo);
	}

	@Override
	public List<TimelineVO> bookingTimeline(Integer bookingNumber) throws Exception {
		return bsDAO.bookingTimeline(bookingNumber);	
	}

}
