package com.forpet.controller.bookingProgress;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.forpet.domain.BookingVO;
import com.forpet.service.BookingSchedule.BookingScheduleService;

@Controller
@RequestMapping("/bookingProgressPage/*")
public class bookingPorgressPageController {
	@Inject
	private BookingScheduleService service;

	private static final Logger logger = LoggerFactory.getLogger(bookingPorgressPageController.class);

	@RequestMapping(value = "/bookingProgressMain", method = RequestMethod.GET)
	public void CalendarListAll() throws Exception {
		logger.info("show all list");
	}
	
}
