package com.forpet.persistence.BookingProgess;

import java.util.List;

import com.forpet.domain.BookingVO;
import com.forpet.domain.MovieVO;

public interface MovieUploadDAO {
	
	public void insertMovie(MovieVO mVo) throws Exception;
	
	public List<BookingVO> findByTimeline(Integer bookingNumber) throws Exception;
	
	public List<BookingVO> findMovie(Integer bookingNumber) throws Exception;
	
	public List<MovieVO> showMovie(String movieName) throws Exception;

}
