package com.forpet.persistence.signupPage;

import com.forpet.domain.UserVO;

public interface SignUpDAO {

public void signUp(UserVO user) throws Exception;

public String idCheck(UserVO user) throws Exception;

//public void SitterSignUp(SitterSignUpDTO sitter) throws Exception;
}
