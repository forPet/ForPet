package com.forpet.persistence.userPage;

import java.util.List;

import com.forpet.domain.BookingDTO;
import com.forpet.domain.UserBoughtExtraServiceVO;

public interface MyPageDAO {
	public List<BookingDTO> reservationSearch(int userNumber) throws Exception;
	public UserBoughtExtraServiceVO reservationDetailSearch(int bookingNumber);
}
