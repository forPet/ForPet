package com.forpet.controller.bookingProgress;

import java.io.File;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.forpet.domain.MovieVO;
import com.forpet.service.BookingProgress.MovieUploadService;

@Controller
@RequestMapping("/bookingProgressPage/*")
public class bookingPorgressPageController {
	
	@Inject
	private MovieUploadService muService;
	
	@Resource(name= "uploadPath")
	private String uploadPath;

	private static final Logger logger = LoggerFactory.getLogger(bookingPorgressPageController.class);

	@RequestMapping(value = "/bookingProgressMain", method = RequestMethod.GET)
	public void CalendarListAll(int bookingNumber, Model model) throws Exception {
		logger.info("show all list");
		model.addAttribute("list", muService.findByTimeline(bookingNumber));
		model.addAttribute("bookingNumber", bookingNumber);
	}
	
	@RequestMapping(value="/bookingProgressMain", method = RequestMethod.POST)
	public void insertMoviePOST(@RequestParam("bookingNumber") int bookingNumber, MovieVO mVo, MultipartFile file, Model model) throws Exception{
		
		logger.info("Name :" + file.getOriginalFilename());
		logger.info("Name :" + file.getSize());
		logger.info("Name :" + file.getContentType());
		
		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());

		model.addAttribute("savedName", savedName);
		mVo.setMovieName(savedName);
		mVo.setBookingNumber(bookingNumber);
		muService.insertMovie(mVo);
		model.addAttribute("list", muService.findByTimeline(bookingNumber));
	}

	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		
		UUID uid = UUID.randomUUID();
		
		String savedName = uid.toString() + "_" + originalName;
		
		File target = new File(uploadPath, savedName);
		
		FileCopyUtils.copy(fileData, target);
		
		return savedName;
	}
	
	@RequestMapping(value = "/showSixHourMovie", method = RequestMethod.GET)
	public void showSixHourMovie(int bookingNumber, Model model) throws Exception {
		logger.info("show all list");
		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findMovie(bookingNumber));
	}
	
	@RequestMapping(value = "/showMovieMain", method = RequestMethod.GET)
	public void showMovieMain(String movieName, Model model) throws Exception {
		model.addAttribute("list", muService.showMovie(movieName));
	}
	
}
