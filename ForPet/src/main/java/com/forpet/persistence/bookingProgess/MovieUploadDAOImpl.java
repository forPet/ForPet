package com.forpet.persistence.bookingProgess;

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
	public List<BookingVO> findSixHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findSixHourMovie", bookingNumber);
	}
	
	@Override
	public List<BookingVO> findSevenHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findSevenHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findEightHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findEightHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findNineHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findNineHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findTenHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findTenHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findOneOneHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findOneOneHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findOneTwoHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findOneTwoHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findOneThreeHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findOneThreeHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findOneFourHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findOneFourHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findOneFiveHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findOneFiveHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findOneSixHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findOneSixHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findOneSevenHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findOneSevenHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findOneEightHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findOneEightHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findOneNineHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findOneNineHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findTwoZeroHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findTwoZeroHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findTwoOneHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findTwoOneHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findTwoTwoHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findTwoTwoHourMovie", bookingNumber);
	}

	@Override
	public List<BookingVO> findTwoThreeHourMovie(Integer bookingNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findTwoThreeHourMovie", bookingNumber);
	}

	@Override
	public List<MovieVO> showMovie(String movieName) throws Exception {
		return sqlSession.selectList(namespace + ".findBymovieNumber", movieName);
	}

}
