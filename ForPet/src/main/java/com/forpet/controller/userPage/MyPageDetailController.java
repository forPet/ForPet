package com.forpet.controller.userPage;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.forpet.service.userPage.MyPageService;

@Controller
@RequestMapping("/userPage/MyPage*")
public class MyPageDetailController {

	@Inject
	private MyPageService service;
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void SitterListPage(Model model) throws Exception {
		
	}
}
