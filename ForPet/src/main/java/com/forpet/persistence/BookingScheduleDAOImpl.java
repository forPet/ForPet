package com.forpet.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.BookingScheduleVO;

@Repository
public class BookingScheduleDAOImpl implements BookingScheduleDAO {
	
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "forpet_BookingSchedule";

	@Override
	public List<BookingScheduleVO> findCalendarListAll(Integer userNumber) throws Exception {
		List<BookingScheduleVO> ret = sqlSession.selectList(namespace + ".findCalendarListAll", userNumber);
		return ret;
	}
}
