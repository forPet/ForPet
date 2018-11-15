package com.forpet.persistence.signupPage;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.SitterSignUpDTO;
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

//	@Override
//	public void SitterSignUp(SitterSignUpDTO sitter) throws Exception {
//		session.insert(namespace +".SitterSignUp", sitter);
//	}
}
