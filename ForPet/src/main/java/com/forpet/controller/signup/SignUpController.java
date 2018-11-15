package com.forpet.controller.signup;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.forpet.domain.SitterSignUpDTO;
import com.forpet.domain.UserVO;
import com.forpet.service.signupPage.SignupService;

/**
 * Handles requests for the application home page.
 */

@Controller
@RequestMapping("/signUp/*")
public class SignUpController {
	@Inject
	private SignupService signService;
	/**
	 * 회원가입
	 */
	@RequestMapping(value = "/signUpPage", method = RequestMethod.GET)
	public void signUpPageGET(UserVO user, Model model)throws Exception {
	}
	@RequestMapping(value = "/signUpPage", method = RequestMethod.POST)
	public String signUpPagePOST(UserVO user)throws Exception {
		System.out.println(user);
		signService.signUp(user);
		
		return "redirect:/";
	}
	/**
	 * ID 중복 체크
	 * @throws Exception 
	 */
	@RequestMapping(value = "/checkIdPage", method = {RequestMethod.POST,RequestMethod.GET})
	public void checkIdPage(UserVO user, Model model) throws Exception{
		String result = signService.idCheck(user);
		model.addAttribute("userId", result);
	}
	/**
	 * Sitter 가입
	 */
	/*@RequestMapping(value = "/sitterSignUpPage", method = RequestMethod.GET)
	public void SitterSignUpPageGET(SitterSignUpDTO sitter, Model model)throws Exception {
	}
	@RequestMapping(value = "/sitterSignUpPage", method = RequestMethod.POST)
	public String SitterSignUpPagePOST(SitterSignUpDTO sitter)throws Exception {
		System.out.println(sitter);
		signService.sitterSignUp(sitter);
		
		return "redirect:/";
	}*/
}
