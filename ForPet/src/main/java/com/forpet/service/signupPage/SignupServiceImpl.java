package com.forpet.service.signupPage;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.forpet.domain.SitterAnimalspecVO;
import com.forpet.domain.SitterCertificateVO;
import com.forpet.domain.SitterServiceExtraVO;
import com.forpet.domain.SitterServiceVO;
import com.forpet.domain.SitterVO;
import com.forpet.domain.UserVO;
import com.forpet.persistence.signupPage.SignUpDAO;

@Service
public class SignupServiceImpl implements SignupService {

	@Inject
	private SignUpDAO dao;
	
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public void signUp(UserVO user) throws Exception {
		dao.signUp(user);
	}
	
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public String idCheck(UserVO user) throws Exception {
		return dao.idCheck(user);
	}
	
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public void sitterSignUp(SitterVO sitterVO, SitterServiceVO sitterServiceVO,
			SitterServiceExtraVO sitterServiceExtraVO, SitterAnimalspecVO sitterAnimalspecVO,
			SitterCertificateVO sitterCertificateVO, UserVO authority) throws Exception {
		dao.sitterSignUp(sitterVO);
		int sitterNo = sitterVO.getSitterNumber();
		sitterServiceVO.setSitterNumber(sitterNo);
		sitterServiceExtraVO.setSitterNumber(sitterNo);
		sitterAnimalspecVO.setSitterNumber(sitterNo);
		sitterCertificateVO.setSitterNumber(sitterNo);
		dao.sitterServiceSignUp(sitterServiceVO);
		dao.sitterAnimalSpec(sitterAnimalspecVO);
		dao.sitterCertificate(sitterCertificateVO);
		dao.sitterServiceExtra(sitterServiceExtraVO);
		dao.sitterAuthority(authority);
	}
}
