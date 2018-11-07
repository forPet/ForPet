package com.forpet.service.BookingProgress;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.forpet.domain.MovieVO;
import com.forpet.persistence.BookingProgess.MovieUploadDAO;

@Service
public class MovieUploadServiceImpl implements MovieUploadService {
	
	
	@Inject
	private MovieUploadDAO muDAO;
	
	private static final Logger log = LoggerFactory.getLogger(MovieUploadServiceImpl.class);
	
	@Override
	public void insertMovie(MovieVO mVo) throws Exception {
		muDAO.insertMovie(mVo);
	}
}