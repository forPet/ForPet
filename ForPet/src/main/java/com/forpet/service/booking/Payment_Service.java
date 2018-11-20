package com.forpet.service.booking;

import java.util.List;

import com.forpet.domain.BookingScheduleVO;
import com.forpet.domain.BookingVO;
import com.forpet.domain.SitterVO;
import com.forpet.domain.UserBoughtExtraServiceVO;
import com.forpet.domain.UserVO;

public interface Payment_Service {
	public void payment(BookingVO vo) throws Exception;
	public SitterVO sitterInfo(int vo) throws Exception;
	public List<SitterVO> sitterServiceSel(int vo) throws Exception;
	public List<SitterVO> sitterExtra(int vo) throws Exception;
	public UserVO userIdSelect(int vo) throws Exception;
	public BookingVO bookingNumSelect(String userId) throws Exception;
	public void bookingScheduleInsert(BookingScheduleVO vo) throws Exception;
	public void boughtExtraServiceInsert(UserBoughtExtraServiceVO vo) throws Exception;
}
