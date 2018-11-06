package com.forpet.persistence.BookingProgess;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.forpet.domain.BookingVO;
import com.forpet.persistence.BookingSchedule.BookingScheduleDAO;

@Service
public class MovieUploadDAOImpl implements MovieUploadDAO {
	
	@Inject
	private SqlSession sqlSession;

	@Override
	public void insertMovie(Map<String, Object> map) throws Exception {
		sqlSession.insert("sample.insertFile", map);
	}
	
	

}
