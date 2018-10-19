package com.forpet.controller.booking;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.forpet.domain.booking.PaymentVO;
import com.forpet.service.booking.Payment_Service;

@Controller
@RequestMapping("/booking/*")
public class PaymentController {
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@Inject
	private Payment_Service service;
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public void payment(PaymentVO payment, Model model) throws Exception {
		
	}
}
