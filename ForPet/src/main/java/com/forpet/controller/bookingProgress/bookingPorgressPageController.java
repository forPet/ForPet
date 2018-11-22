package com.forpet.controller.bookingProgress;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.forpet.service.bookingProgress.MovieUploadService;

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
		logger.info("show CalendarListAll");
		model.addAttribute("list", muService.findByTimeline(bookingNumber));
		model.addAttribute("bookingNumber", bookingNumber);
	}
	
	@RequestMapping(value="/insertMovie", method = RequestMethod.POST)
	public String insertMoviePOST(@RequestParam("bookingNumber") int bookingNumber, MovieVO mVo, 
			MultipartFile file, Model model) throws Exception{
		
		logger.info("originalName :" + file.getOriginalFilename());
		logger.info("size :" + file.getSize());
		logger.info("contentType :" + file.getContentType());

		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());

		DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
		Date date = new Date();
		
		model.addAttribute("savedName", savedName);
		mVo.setMovieName(savedName);
		mVo.setBookingNumber(bookingNumber);
		mVo.setShootingTime(dateFormat.format(date));
		muService.insertMovie(mVo);
		model.addAttribute("list", muService.findByTimeline(bookingNumber));
		
		return "redirect:/bookingProgressPage/bookingProgressMain?bookingNumber" + "=" + bookingNumber;
	}

	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		
		UUID uid = UUID.randomUUID();
		
		String savedName = uid.toString() + "_" + originalName;
		
		File target = new File(uploadPath, savedName);
		
		FileCopyUtils.copy(fileData, target);
		
		return savedName;
	}
	
	@RequestMapping(value = "/progressHour/showSixHourMovie", method = RequestMethod.GET)
	public void showSixHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findSixHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showSevenHourMovie", method = RequestMethod.GET)
	public void showSevenHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findSevenHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showEightHourMovie", method = RequestMethod.GET)
	public void showEightHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findEightHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showNineHourMovie", method = RequestMethod.GET)
	public void showNineHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findNineHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showTenHourMovie", method = RequestMethod.GET)
	public void showTenHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findTenHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showOneOneHourMovie", method = RequestMethod.GET)
	public void showOneOneHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findOneOneHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showOneTwoHourMovie", method = RequestMethod.GET)
	public void showOneTwoHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findOneTwoHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showOneThreeHourMovie", method = RequestMethod.GET)
	public void showOneThreeHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findOneThreeHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showOneFourHourMovie", method = RequestMethod.GET)
	public void showOneFourHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findOneFourHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showOneFiveHourMovie", method = RequestMethod.GET)
	public void showOneFiveHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findOneFiveHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showOneSixHourMovie", method = RequestMethod.GET)
	public void showOneSixHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findOneSixHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showOneSevenHourMovie", method = RequestMethod.GET)
	public void showOneSevenHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findOneSevenHourMovie(bookingNumber));
	}

	@RequestMapping(value = "/progressHour/showOneEightHourMovie", method = RequestMethod.GET)
	public void showOneEightHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findOneEightHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showOneNineHourMovie", method = RequestMethod.GET)
	public void showOneNineHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findOneNineHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showTwoZeroHourMovie", method = RequestMethod.GET)
	public void showTwoZeroHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findTwoZeroHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showTwoOneHourMovie", method = RequestMethod.GET)
	public void showTwoOneHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findTwoOneHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showTwoTwoHourMovie", method = RequestMethod.GET)
	public void showTwoTwoHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findTwoTwoHourMovie(bookingNumber));
	}
	@RequestMapping(value = "/progressHour/showTwoThreeHourMovie", method = RequestMethod.GET)
	public void showTwoThreeHourMovie(int bookingNumber, Model model) throws Exception {

		model.addAttribute("bookingNumber", bookingNumber);
		model.addAttribute("list", muService.findTwoThreeHourMovie(bookingNumber));
	}
	
	@RequestMapping(value = "/showMovieMain", method = RequestMethod.GET)
	public void showMovieMain(String movieName, Model model) throws Exception {
		model.addAttribute("list", muService.showMovie(movieName));
	}
	
}
