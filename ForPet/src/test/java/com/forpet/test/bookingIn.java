package com.forpet.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.forpet.persistence.bookingProgess.MovieUploadDAO;
import com.forpet.persistence.bookingSchedule.BookingScheduleDAO;
import com.forpet.persistence.detailService.detailServiceDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class bookingIn {
	
	@Inject
	private BookingScheduleDAO dao;
	
	@Inject
	private MovieUploadDAO mDao;
	
	@Inject
	private detailServiceDAO dsDao;
	
	
	@Test
	public void test() throws Exception {
		dao.bookingTimeline(29);
	}

}
