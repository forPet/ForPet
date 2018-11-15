package com.forpet.controller.userPage;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.forpet.domain.LoginDTO;
import com.forpet.domain.UserVO;
import com.forpet.service.userPage.UserService;

@Controller
@RequestMapping("/userPage")
public class UserController {

	@Inject
	private UserService service;
	/**
	 * 로그인 기능
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {
	}
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		UserVO vo = service.login(dto);
		if (vo == null) {
			return;
		}
		model.addAttribute("userVO", vo);
	}
	/**
	 * 마이페이지
	 */
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void myPage(HttpServletRequest request, Model model) throws Exception {
	}
}
