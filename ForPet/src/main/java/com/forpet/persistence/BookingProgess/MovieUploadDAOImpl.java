package com.forpet.persistence.BookingProgess;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.forpet.domain.BookingVO;
import com.forpet.domain.MovieVO;

@Service
public class MovieUploadDAOImpl implements MovieUploadDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "forpet_BookingProgress";

	@Override
	public void insertMovie(MovieVO mVo) throws Exception {
		sqlSession.insert(namespace + ".insertMovie", mVo);
	}

	@Override
	public List<BookingVO> findByTimeline(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findByTimeline", bookingNumber);
	}
	
	@Override
	public List<BookingVO> findMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findMovie", bookingNumber);
	}

	@Override
	public List<MovieVO> showMovie(String movieName) throws Exception {
		return sqlSession.selectList(namespace + ".findBymovieNumber", movieName);
	}

}
