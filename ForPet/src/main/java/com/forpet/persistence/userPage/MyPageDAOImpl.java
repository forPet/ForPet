package com.forpet.persistence.userPage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.BookingDTO;
import com.forpet.domain.BookingVO;
import com.forpet.domain.PaymentVO;
import com.forpet.domain.UserBoughtExtraServiceVO;

@Repository
public class MyPageDAOImpl implements MyPageDAO{
	private static String namespace = "com.forpet.MyPage_Mapper";

	@Inject
	SqlSession session;
	
	@Override
	public List<BookingDTO> reservationSearch(int userNumber) throws Exception {
		return session.selectList(namespace + ".reservationSearch", userNumber);
	}

	@Override
	public List<UserBoughtExtraServiceVO> reservationDetailSearch(int bookingNumber) {
		return session.selectList(namespace + ".reservationDetailSearch", bookingNumber);
	}

	@Override
	public BookingVO oneReservationSearch(int bookingNumber) throws Exception {
		return session.selectOne(namespace + ".oneReservationSearch", bookingNumber);
	}

	@Override
	public void payment(PaymentVO paymentVO) throws Exception {
		session.insert(namespace + ".payment", paymentVO);
	}

	@Override
	public PaymentVO paymentSelect(int bookingNumber) throws Exception {
		return session.selectOne(namespace + ".paymentSelect", bookingNumber);
	}
}
