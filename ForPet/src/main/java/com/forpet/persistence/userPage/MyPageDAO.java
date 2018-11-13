package com.forpet.persistence.userPage;

import java.util.List;

import com.forpet.domain.BookingDTO;

public interface MyPageDAO {
	public List<BookingDTO> reservationSearch(int userNumber) throws Exception;
}
