package com.forpet.persistence.bookingSchedule;

import java.util.List;

import com.forpet.domain.BookingVO;
import com.forpet.domain.TimelineVO;

public interface BookingScheduleDAO {
	
	public List<BookingVO> findCalendarListAll(Integer sitterNumber) throws Exception;
	
	public List<BookingVO> bookingDetailInform(Integer bookingNumber) throws Exception;
	
	public void bookingConfirm(BookingVO vo) throws Exception;
	
	public void bookingCancel(Integer bookingNumber) throws Exception;
	
	public void bookingCancelReturnResult (BookingVO vo) throws Exception;
	
	public void cancelComment(BookingVO vo) throws Exception;
	
	public List<TimelineVO> bookingTimeline(Integer bookingNumber) throws Exception;

}
