package com.forpet.service.BookingProgress;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface MovieUploadService {
	
	public void insertMovie(Map<String, Object> map, HttpServletRequest request) throws Exception;

}
