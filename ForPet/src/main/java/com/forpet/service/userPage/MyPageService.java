package com.forpet.service.userPage;

import java.util.List;

import com.forpet.domain.BookingDTO;
import com.forpet.domain.BookingVO;
import com.forpet.domain.PaymentVO;
import com.forpet.domain.UserBoughtExtraServiceVO;

public interface MyPageService {
	public List<BookingDTO> reservationSearch(int userNumber) throws Exception;
	public List<UserBoughtExtraServiceVO> reservationDetailSearch(int bookingNumber) throws Exception;
	public BookingVO oneReservationSearch(int bookingNumber) throws Exception;
	public void payment(PaymentVO paymentVO) throws Exception;
	public PaymentVO paymentSelect(int bookingNumber) throws Exception;
}
