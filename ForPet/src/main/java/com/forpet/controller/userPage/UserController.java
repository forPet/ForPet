package com.forpet.controller.userPage;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		System.out.println(dto);
		UserVO vo = service.login(dto);
		if (vo == null) {
			return;
		}
		model.addAttribute("userVO", vo);
		System.out.println(vo);
	}
	/**
	 * 마이페이지
	 */
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void myPage(HttpServletRequest request, Model model) throws Exception {
	}
	/**
	 * 로그아웃 기능
	 */
	@RequestMapping("/logOut")
  public ModelAndView logOut(HttpServletRequest request)throws Exception {
		request.getSession().removeAttribute("login");
		
		ModelAndView mav = new ModelAndView("/userPage/logOut");
		mav.addObject("msg", "로그아웃 되었습니다.");
		
		return mav;
  }
	
}
