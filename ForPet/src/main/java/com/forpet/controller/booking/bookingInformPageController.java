package com.forpet.controller.booking;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.forpet.service.BookingScheduleService;

@Controller
@RequestMapping("/bookingInformPage/*")
public class bookingInformPageController {
	@Inject
	private BookingScheduleService service;

	private static final Logger logger = LoggerFactory.getLogger(bookingInformPageController.class);
	
	@RequestMapping(value = "/bookingInformMain", method = RequestMethod.GET)
	public void bookingInformMain(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		
	}
	
	@RequestMapping(value = "/bookingInformMain", method = RequestMethod.GET)
	public void CalendarListAll(@RequestParam("userNumber") int userNumber, Model model) throws Exception {
		logger.info("show all list");
		model.addAttribute("list", service.findCalendarListAll(userNumber));
	}
}
