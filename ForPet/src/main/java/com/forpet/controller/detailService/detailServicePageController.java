package com.forpet.controller.detailService;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.forpet.controller.booking.bookingInformPageController;
import com.forpet.service.detailService.detailService;

@Controller
@RequestMapping("/detailServicePage/*")
public class detailServicePageController {

	@Inject
	private detailService service;

	private static final Logger logger = LoggerFactory.getLogger(bookingInformPageController.class);

	@RequestMapping(value = "/detailServicePageMain", method = RequestMethod.GET)
	public void FindSitterSchedule(@RequestParam("sitterNumber") int sitterNumber, Model model) throws Exception {
		logger.info("show all list");
		model.addAttribute("sitterNumber", sitterNumber);
		model.addAttribute("list", service.findSitterSchedule(sitterNumber));
	}



}
