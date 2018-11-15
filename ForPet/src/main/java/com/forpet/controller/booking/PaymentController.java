package com.forpet.controller.booking;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.forpet.domain.BookingScheduleVO;
import com.forpet.domain.BookingVO;
import com.forpet.domain.UserVO;
import com.forpet.service.booking.Payment_Service;

@Controller	
@RequestMapping("/booking/*")
public class PaymentController {
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);
	
	@Inject
	private Payment_Service service;
	
	@RequestMapping(value = "/customBooking", method = RequestMethod.GET)
	public void customBookingGet(Model model, @RequestParam("sitterNumber") int sitterNumber, @RequestParam("userNumber") int userNumber) throws Exception {
		model.addAttribute("sitterExtra", service.sitterExtra(sitterNumber));
		System.out.println("GET클릭");
	}
	
	@RequestMapping(value = "/customBooking", method = RequestMethod.POST)
	public String customBookingPost(BookingScheduleVO vo2, BookingVO vo, Model model, @RequestParam("userNumber") int userNumber) throws Exception {
//		UserVO userVo = service.userIdSelect(userNumber);
//		String UserId = userVo.getUserId();
//		vo.setUserId(UserId);
		System.out.println(vo2);
		System.out.println(vo);
//		service.payment(vo);
		
		model.addAttribute("vo", vo);
		
		return "redirect:/userPage/myPage";
	}
	
	@RequestMapping(value = "/asd", method = RequestMethod.GET)
	public void test(Model model) throws Exception {
		logger.info("Show all list...");
//	List<BoardVO> allBoard = service.findAllBoard();
//	model.addAttribute("allBoard", allBoard);
	}
}
