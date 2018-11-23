package com.forpet.controller.signup;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.forpet.domain.SitterAnimalspecVO;
import com.forpet.domain.SitterCertificateVO;
import com.forpet.domain.SitterServiceExtraVO;
import com.forpet.domain.SitterServiceVO;
import com.forpet.domain.SitterVO;
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
		System.out.println("get클릭");
		System.out.println("GET"+user);
	}
	@RequestMapping(value = "/signUpPage", method = RequestMethod.POST)
	public String signUpPagePOST(UserVO user)throws Exception {
		System.out.println("post클릭");
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
	 * Sitter 가입신청 
	 */
	@RequestMapping(value = "/sitterSignUpPage", method = RequestMethod.GET)
	public void sitterSignUpPageGET(SitterVO sitterVO, SitterServiceVO sitterServiceVO, Model model)throws Exception {
		System.out.println("get클릭");
	}
	@RequestMapping(value = "/sitterSignUpPage", method = RequestMethod.POST)
	public String sitterSignUpPagePOST(SitterVO sitterVO, SitterServiceVO sitterServiceVO,
			SitterServiceExtraVO sitterServiceExtraVO, SitterAnimalspecVO sitterAnimalspecVO,
			SitterCertificateVO sitterCertificateVO, UserVO authority)throws Exception {
			String[] Type = sitterServiceExtraVO.getExtraServiceType().split(",", sitterServiceExtraVO.getExtraServiceType().length());
			String[] Name = sitterServiceExtraVO.getExtraServiceName().split(",", sitterServiceExtraVO.getExtraServiceName().length());
			String[] Price = sitterServiceExtraVO.getExtraSerivcePrice().split(",", sitterServiceExtraVO.getExtraSerivcePrice().length());
		for (int i = 0; i < sitterServiceExtraVO.getExtraServiceType().length(); i++) {
			
			
		}
		
		signService.sitterSignUp(sitterVO, sitterServiceVO, sitterServiceExtraVO, sitterAnimalspecVO, sitterCertificateVO, authority);
		return "redirect:/";
	}
}
