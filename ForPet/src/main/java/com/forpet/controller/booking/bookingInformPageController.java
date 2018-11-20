package com.forpet.controller.booking;

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
import com.forpet.service.bookingSchedule.BookingScheduleService;

@Controller
@RequestMapping("/bookingInformPage/*")
public class bookingInformPageController {
	
	@Inject
	private BookingScheduleService service;

	private static final Logger logger = LoggerFactory.getLogger(bookingInformPageController.class);

	@RequestMapping(value = "/bookingInformMain", method = RequestMethod.GET)
	public void CalendarListAll(@RequestParam("sitterNumber") int sitterNumber, Model model) throws Exception {
		logger.info("show all list");
		model.addAttribute("list", service.findCalendarListAll(sitterNumber));
	}
	
	@RequestMapping(value = "/bookingInformDetail", method = RequestMethod.GET)
	public void BookingDetailInform(@RequestParam("bookingNumber") int bookingNumber, Model model) throws Exception {
		logger.info("show all list");
		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", service.bookingDetailInform(bookingNumber));
	}
	
	@RequestMapping(value = "/bookingConfirm", method = RequestMethod.GET)
	public void BookingConfirmGET(@RequestParam("bookingNumber") int bookingNumber, Model model) throws Exception {
		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", service.bookingDetailInform(bookingNumber));
	}
	
	@RequestMapping(value = "/bookingTimeline", method = RequestMethod.GET)
	public void BookingTimelineGET(@RequestParam("bookingNumber") int bookingNumber, Model model) throws Exception {
		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", service.bookingTimeline(bookingNumber));
	}

	@RequestMapping(value = "/bookingConfirm", method = RequestMethod.POST)
	public String BookingConfirmPOST(BookingVO vo, RedirectAttributes rttr) throws Exception {
		
		logger.info("update post...");
		//update는 void로 아무런 정보가 없다 -> rttr.add..으로 정보를 넣어준 뒤 return 해준다
		service.bookingConfirm(vo);
		rttr.addFlashAttribute("msg", "success");
		return "";
	}
	
	@RequestMapping(value = "/bookingCancel", method = RequestMethod.POST)
	public String BookingCancel(@RequestParam("bookingNumber") int bookingNumber, RedirectAttributes rttr) throws Exception {
		service.bookingCancel(bookingNumber);
		rttr.addFlashAttribute("msg", "success");
		return "";
	}
	
	@RequestMapping(value = "/bookingCancelReturnResult", method = RequestMethod.POST)
	public String bookingCancelReturnResult(BookingVO vo, RedirectAttributes rttr) throws Exception {
		service.bookingCancelReturnResult(vo);
		rttr.addFlashAttribute("msg", "success");
		return "";
	}
	
	@RequestMapping(value = "/cancelComment", method = RequestMethod.POST)
	public String cancelComment(BookingVO vo, RedirectAttributes rttr) throws Exception {
		logger.info("update post...");
		//update는 void로 아무런 정보가 없다 -> rttr.add..으로 정보를 넣어준 뒤 return 해준다
		service.cancelComment(vo);
		rttr.addFlashAttribute("msg", "success");
		return "";
	}


}
