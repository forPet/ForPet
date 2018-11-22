package com.forpet.controller.booking;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.resource.ResourceHttpRequestHandler;

import com.forpet.domain.BookingScheduleVO;
import com.forpet.domain.BookingVO;
import com.forpet.domain.UserBoughtExtraServiceVO;
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
	public String customBookingPost(UserBoughtExtraServiceVO userBoughtExtraServiceVO, BookingScheduleVO bookingScheduleVO, BookingVO bookingVO, Model model, @RequestParam("userNumber") int userNumber) throws Exception {
		UserVO userVo = service.userIdSelect(userNumber);
		String userId = userVo.getUserId();
		bookingVO.setUserId(userId);
		service.payment(bookingVO);
		int lastbookingnumber = bookingVO.getBookingNumber();
		bookingScheduleVO.setBookingNumber(lastbookingnumber);
		service.bookingScheduleInsert(bookingScheduleVO);
		
		String[] count = userBoughtExtraServiceVO.getCount().split(",", userBoughtExtraServiceVO.getCount().length());
		String[] name = userBoughtExtraServiceVO.getExtraServiceName().split(",", userBoughtExtraServiceVO.getExtraServiceName().length());
		String[] extraPrice = userBoughtExtraServiceVO.getExtraPrice().split(",", userBoughtExtraServiceVO.getExtraPrice().length());
		
		for(int i = 0; i < count.length; i++)	{
			userBoughtExtraServiceVO.setBookingNumber(lastbookingnumber);
			userBoughtExtraServiceVO.setCount(count[i]);
			userBoughtExtraServiceVO.setExtraPrice(extraPrice[i]);
			userBoughtExtraServiceVO.setExtraServiceName(name[i]);
			service.splitInsert(userBoughtExtraServiceVO);
		}
		return "redirect:/myPage/reservationPage?userNumber=2";
	}
	
	@RequestMapping(value = "/asd", method = RequestMethod.GET)
	public void test(Model model) throws Exception {
		logger.info("Show all list...");
//	List<BoardVO> allBoard = service.findAllBoard();
//	model.addAttribute("allBoard", allBoard);
	}
}
