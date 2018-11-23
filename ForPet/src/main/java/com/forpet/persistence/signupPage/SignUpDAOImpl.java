package com.forpet.persistence.signupPage;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.SitterAnimalspecVO;
import com.forpet.domain.SitterCertificateVO;
import com.forpet.domain.SitterServiceExtraVO;
import com.forpet.domain.SitterServiceVO;
import com.forpet.domain.SitterVO;
import com.forpet.domain.UserVO;

@Repository
public class SignUpDAOImpl implements SignUpDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.forpet.mapper.UserPage.signupMapper";
	
	@Override
	public void signUp(UserVO user) throws Exception {
		session.insert(namespace +".signUp", user);
	}

	@Override
	public String idCheck(UserVO user) throws Exception {
		return session.selectOne(namespace+ ".SignupIdCeheck", user);
	}

	@Override
	public void sitterSignUp(SitterVO sitterVO) throws Exception {
		session.insert(namespace +".insert_Sitter", sitterVO);
	}
		
	@Override
	public void sitterServiceSignUp(SitterServiceVO sitterServiceVO) throws Exception {
		session.insert(namespace +".insert_Sitter_Service", sitterServiceVO);
	}

	@Override
	public void sitterServiceExtra(SitterServiceExtraVO sitterServiceExtraVO) throws Exception {
		session.insert(namespace +".insert_sitter_service_extra", sitterServiceExtraVO);
		
	}

	@Override
	public void sitterAnimalSpec(SitterAnimalspecVO sitterAnimalspecVO) throws Exception {
		session.insert(namespace +".insert_sitter_animalspec", sitterAnimalspecVO);
		
	}

	@Override
	public void sitterCertificate(SitterCertificateVO sitterCertificateVO) throws Exception {
		session.insert(namespace +".insert_sitter_certificate", sitterCertificateVO);
		
	}

	@Override
	public void sitterAuthority(UserVO authority) throws Exception {
		session.insert(namespace +".insert_sitter_Authority", authority);
		
	}
}
