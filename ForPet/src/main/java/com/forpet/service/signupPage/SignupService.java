package com.forpet.service.signupPage;

import com.forpet.domain.UserVO;

public interface SignupService {

public void signUp(UserVO user) throws Exception;

public String idCheck(UserVO user) throws Exception;

//public void sitterSignUp(SitterSignUpDTO sitter) throws Exception;
}
