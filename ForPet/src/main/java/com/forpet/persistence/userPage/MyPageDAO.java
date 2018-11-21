package com.forpet.persistence.userPage;

import java.util.List;

import com.forpet.domain.BookingDTO;
import com.forpet.domain.BookingVO;
import com.forpet.domain.UserBoughtExtraServiceVO;

public interface MyPageDAO {
	public List<BookingDTO> reservationSearch(int userNumber) throws Exception;
	public List<UserBoughtExtraServiceVO> reservationDetailSearch(int bookingNumber);
	public BookingVO oneReservationSearch(int bookingNumber) throws Exception;
}
