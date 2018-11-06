package com.forpet.service.BookingProgress;

import java.util.Iterator;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.forpet.controller.bookingProgress.bookingPorgressPageController;
import com.forpet.persistence.BookingProgess.MovieUploadDAO;

@Service
public class MovieUploadServiceImpl implements MovieUploadService {
	
	
	@Inject
	private MovieUploadDAO muDAO;
	
	private static final Logger log = LoggerFactory.getLogger(MovieUploadServiceImpl.class);
	
	@Override
	public void insertMovie(Map<String, Object> map, HttpServletRequest request) throws Exception {
		muDAO.insertMovie(map);
	     
	    MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
	    Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
	    MultipartFile multipartFile = null;
	    while(iterator.hasNext()){
	        multipartFile = multipartHttpServletRequest.getFile(iterator.next());
	        if(multipartFile.isEmpty() == false){
	            log.debug("------------- file start -------------");
	            log.debug("name : "+multipartFile.getName());
	            log.debug("filename : "+multipartFile.getOriginalFilename());
	            log.debug("size : "+multipartFile.getSize());
	            log.debug("-------------- file end --------------\n");
	        }
	    }
	}
}
