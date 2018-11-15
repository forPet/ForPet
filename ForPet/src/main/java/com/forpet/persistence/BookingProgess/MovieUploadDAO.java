package com.forpet.persistence.BookingProgess;

import java.util.List;

import com.forpet.domain.BookingVO;
import com.forpet.domain.MovieVO;

public interface MovieUploadDAO {
	
	public void insertMovie(MovieVO mVo) throws Exception;
	
	public List<BookingVO> findByTimeline(Integer bookingNumber) throws Exception;
	
	public List<BookingVO> findSixHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findSevenHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findEightHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findNineHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findTenHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findOneOneHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findOneTwoHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findOneThreeHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findOneFourHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findOneFiveHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findOneSixHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findOneSevenHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findOneEightHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findOneNineHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findTwoZeroHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findTwoOneHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findTwoTwoHourMovie(Integer bookingNumber) throws Exception;
	public List<BookingVO> findTwoThreeHourMovie(Integer bookingNumber) throws Exception;
	
	public List<MovieVO> showMovie(String movieName) throws Exception;

}
