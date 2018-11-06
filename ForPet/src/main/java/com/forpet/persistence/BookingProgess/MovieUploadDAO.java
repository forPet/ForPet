package com.forpet.persistence.BookingProgess;

import java.util.Map;

import com.forpet.domain.MovieVO;

public interface MovieUploadDAO {
	
	public void insertMovie(MovieVO mVo) throws Exception;

}
