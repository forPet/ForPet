package com.forpet.service.signupPage;

import com.forpet.domain.SitterAnimalspecVO;
import com.forpet.domain.SitterCertificateVO;
import com.forpet.domain.SitterServiceExtraVO;
import com.forpet.domain.SitterServiceVO;
import com.forpet.domain.SitterVO;
import com.forpet.domain.UserVO;

public interface SignupService {

public void signUp(UserVO user) throws Exception;

public String idCheck(UserVO user) throws Exception;

public void sitterSignUp(SitterVO sitterVO, SitterServiceVO sitterServiceVO,
		SitterServiceExtraVO sitterServiceExtraVO, SitterAnimalspecVO sitterAnimalspecVO,
		SitterCertificateVO sitterCertificateVO, UserVO authority) throws Exception;
}
