package com.forpet.persistence.userPage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.BookingDTO;
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
	public UserBoughtExtraServiceVO reservationDetailSearch(int bookingNumber) {
		return session.selectOne(namespace + ".reservationDetailSearch", bookingNumber);
	}
}
