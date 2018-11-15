package com.forpet.service.signupPage;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.UserVO;
import com.forpet.persistence.signupPage.SignUpDAO;

@Service
public class SignupServiceImpl implements SignupService {

	@Inject
	private SignUpDAO dao;
	
	@Override
	public void signUp(UserVO user) throws Exception {
		dao.signUp(user);
	}
	@Override
	public String idCheck(UserVO user) throws Exception {
		return dao.idCheck(user);
	}
/*	@Override
	public void sitterSignUp(SitterSignUpDTO sitter) throws Exception {
		dao.SitterSignUp(sitter);
	}*/
}
