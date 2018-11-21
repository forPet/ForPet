package com.forpet.service.userPage;

import java.util.List;

import com.forpet.domain.BookingDTO;

public interface MyPageService {
	public List<BookingDTO> reservationSearch(int userNumber) throws Exception;
}
