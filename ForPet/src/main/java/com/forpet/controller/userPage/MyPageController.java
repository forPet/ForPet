package com.forpet.controller.userPage;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.forpet.domain.BookingDTO;
import com.forpet.service.userPage.MyPageService;

@Controller
@RequestMapping("/userPage/*")
public class MyPageController {

	@Inject
	private MyPageService service;
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void SitterListPage(Model model, @RequestParam("userNumber") int userNumber, BookingDTO DTO) throws Exception {
		model.addAttribute("reservationSearch", service.reservationSearch(userNumber));
		System.out.println(service.reservationSearch(userNumber));
		System.out.println(DTO);
	}
}
