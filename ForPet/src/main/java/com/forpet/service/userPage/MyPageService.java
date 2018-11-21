package com.forpet.service.userPage;

import java.util.List;

import com.forpet.domain.BookingDTO;
import com.forpet.domain.UserBoughtExtraServiceVO;

public interface MyPageService {
	public List<BookingDTO> reservationSearch(int userNumber) throws Exception;
	public UserBoughtExtraServiceVO reservationDetailSearch(int bookingNumber);
}
