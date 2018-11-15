package com.forpet.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.forpet.persistence.BookingProgess.MovieUploadDAO;
import com.forpet.persistence.BookingSchedule.BookingScheduleDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class bookingIn {
	
	@Inject
	private BookingScheduleDAO dao;
	
	@Inject
	private MovieUploadDAO mDao;
	
	
	@Test
	public void test() throws Exception {
		mDao.findByTimeline(1);
	}

}
