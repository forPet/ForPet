package com.forpet.controller.userPage;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.forpet.domain.BookingDTO;
import com.forpet.domain.UserBoughtExtraServiceVO;
import com.forpet.service.userPage.MyPageService;

@Controller
@RequestMapping("/myPage/reservation*")
public class MyPageDetailController {

	@Inject
	private MyPageService service;
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void SitterListPage(Model model, @RequestParam("bookingNumber") int bookingNumber, BookingDTO vo2) throws Exception {
		model.addAttribute("OneReservation", service.oneReservationSearch(bookingNumber));
		System.out.println(service.oneReservationSearch(bookingNumber));
		model.addAttribute("ReservationDetail", service.reservationDetailSearch(bookingNumber));
		System.out.println(service.reservationDetailSearch(bookingNumber));
	}
}
