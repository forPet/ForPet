package com.forpet.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.BookingVO;

@Repository
public class BookingScheduleDAOImpl implements BookingScheduleDAO {
	
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "forpet_BookingSchedule";

	@Override
	public  List<BookingVO> findCalendarListAll(Integer sitterNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findCalendarListAll", sitterNumber);
	}

	@Override
	public List<BookingVO> bookingDetailInform(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".bookingDetailInform", bookingNumber);
	}

	@Override
	public void bookingConfirm(BookingVO vo) throws Exception {
		sqlSession.selectOne(namespace + ".bookingConfirm", vo);
	}
	
	@Override
	public void delete(Integer bookingNumber) throws Exception {
		sqlSession.selectOne(namespace + ".bookingCancel", bookingNumber);
	}

}
