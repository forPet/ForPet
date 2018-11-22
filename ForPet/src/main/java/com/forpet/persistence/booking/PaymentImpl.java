package com.forpet.persistence.booking;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.BookingScheduleVO;
import com.forpet.domain.BookingVO;
import com.forpet.domain.SitterVO;
import com.forpet.domain.UserBoughtExtraServiceVO;
import com.forpet.domain.UserVO;

@Repository
public class PaymentImpl implements PaymentDAO {
	@Inject
	SqlSession session;

	private static String namespace = "com.forpet.Payment_Mapper";

	@Override
	public void payment(BookingVO vo) throws Exception {
		session.insert(namespace + ".payment", vo);
	}

	@Override
	public SitterVO sitterSelect(int vo) throws Exception {
		return session.selectOne(namespace + ".sitterSelect", vo);
	}

	@Override
	public List<SitterVO> sitterServiceSel(int vo) throws Exception {
		return session.selectList(namespace + ".sitterServiceSel", vo);
	}

	@Override
	public List<SitterVO> sitterExtra(int vo) throws Exception {
		return session.selectList(namespace + ".sitterExtra", vo);
	}

	@Override
	public UserVO userIdSelect(int vo) throws Exception {
		return session.selectOne(namespace + ".userIdSelect", vo);
	}

	@Override
	public BookingVO bookingNumSelect(String userId) throws Exception {
		return session.selectOne(namespace + ".bookingNumSelect", userId);
	}

	@Override
	public void bookingScheduleInsert(BookingScheduleVO vo) throws Exception {
		session.insert(namespace + ".bookingScheduleInsert", vo);
	}

	@Override
	public void boughtExtraServiceInsert(UserBoughtExtraServiceVO vo) throws Exception {
		session.insert(namespace + ".boughtExtraServiceInsert", vo);
	}

	@Override
	public void splitInsert(UserBoughtExtraServiceVO vo) throws Exception {
		session.insert(namespace + ".splitInsert", vo);
	}
}
