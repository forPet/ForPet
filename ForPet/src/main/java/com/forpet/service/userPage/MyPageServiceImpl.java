package com.forpet.service.userPage;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.BookingDTO;
import com.forpet.domain.BookingVO;
import com.forpet.domain.PaymentVO;
import com.forpet.domain.UserBoughtExtraServiceVO;
import com.forpet.persistence.userPage.MyPageDAO;

@Service
public class MyPageServiceImpl implements MyPageService{
	@Inject
	MyPageDAO dao;

	@Override
	public List<BookingDTO> reservationSearch(int userNumber) throws Exception {
		return dao.reservationSearch(userNumber);
	}

	@Override
	public List<UserBoughtExtraServiceVO> reservationDetailSearch(int bookingNumber) throws Exception{
		return dao.reservationDetailSearch(bookingNumber);
	}

	@Override
	public BookingVO oneReservationSearch(int bookingNumber) throws Exception {
		return dao.oneReservationSearch(bookingNumber);
	}

	@Override
	public void payment(PaymentVO paymentVO) throws Exception {
		dao.payment(paymentVO);
	}

	@Override
	public PaymentVO paymentSelect(int bookingNumber) throws Exception {
		return dao.paymentSelect(bookingNumber);
	}
}
