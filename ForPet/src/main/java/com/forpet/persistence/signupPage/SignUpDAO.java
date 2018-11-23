package com.forpet.persistence.signupPage;

import com.forpet.domain.SitterAnimalspecVO;
import com.forpet.domain.SitterCertificateVO;
import com.forpet.domain.SitterServiceExtraVO;
import com.forpet.domain.SitterServiceVO;
import com.forpet.domain.SitterVO;
import com.forpet.domain.UserVO;

public interface SignUpDAO {

//	회원가입
public void signUp(UserVO user) throws Exception;

//	중복확인
public String idCheck(UserVO user) throws Exception;

//	시터 권한 부여
public void sitterAuthority(UserVO authority) throws Exception;

//	시터 회원가입
public void sitterSignUp(SitterVO sitterVO) throws Exception;

//	무게별 가격 입력
public void sitterServiceSignUp(SitterServiceVO sitterServiceVO) throws Exception;

//	부가서비스
public void sitterServiceExtra(SitterServiceExtraVO sitterServiceExtraVO) throws Exception;

//	시팅 가능 동물
public void sitterAnimalSpec(SitterAnimalspecVO sitterAnimalspecVO) throws Exception;

//	 자격증
public void sitterCertificate(SitterCertificateVO sitterCertificateVO) throws Exception;

}
