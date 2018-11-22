package com.forpet.service.bookingProgress;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.forpet.domain.BookingVO;
import com.forpet.domain.MovieVO;
import com.forpet.persistence.bookingProgess.MovieUploadDAO;

@Service
public class MovieUploadServiceImpl implements MovieUploadService {
	
	
	@Inject
	private MovieUploadDAO muDAO;
	
	private static final Logger log = LoggerFactory.getLogger(MovieUploadServiceImpl.class);
	
	@Override
	public void insertMovie(MovieVO mVo) throws Exception {
		muDAO.insertMovie(mVo);
	}
	
	@Override
	public List<MovieVO> showMovie(String movieName) throws Exception {
		return muDAO.showMovie(movieName);
	}

	@Override
	public List<BookingVO> findByTimeline(Integer bookingNumber) throws Exception {
		return muDAO.findByTimeline(bookingNumber);
	}

	@Override
	public List<BookingVO> findSixHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findSixHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findSevenHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findSevenHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findEightHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findEightHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findNineHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findNineHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findTenHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findTenHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findOneOneHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findOneOneHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findOneTwoHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findOneTwoHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findOneThreeHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findOneThreeHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findOneFourHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findOneFourHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findOneFiveHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findOneFiveHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findOneSixHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findOneSixHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findOneSevenHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findOneSevenHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findOneEightHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findOneEightHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findOneNineHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findOneNineHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findTwoZeroHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findTwoZeroHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findTwoOneHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findTwoOneHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findTwoTwoHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findTwoTwoHourMovie(bookingNumber);
	}

	@Override
	public List<BookingVO> findTwoThreeHourMovie(Integer bookingNumber) throws Exception {
		return muDAO.findTwoThreeHourMovie(bookingNumber);
	}

}
