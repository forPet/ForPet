package com.forpet.service.userPage;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.LoginDTO;
import com.forpet.domain.UserVO;
import com.forpet.persistence.userPage.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;
	
	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		return dao.login(dto);
	}
	@Override
	public UserVO userinfo(Integer uno) throws Exception {
		return dao.userinfo(uno);
	}
	@Override
	public UserVO sitterCheck(UserVO checkVO) throws Exception {
		return dao.sitterCheck(checkVO);
	}
}
