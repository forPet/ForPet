package com.forpet.persistence.userPage;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.LoginDTO;
import com.forpet.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.forpet.mapper.UserPage.userMapper";
	
	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		return session.selectOne(namespace +".login", dto);
	}
	
	@Override
	public UserVO userinfo(Integer uno) throws Exception {
		return session.selectOne(namespace +".userinfo", uno);
	}

	@Override
	public UserVO sitterCheck(UserVO checkVO) throws Exception {
		return session.selectOne(namespace +".sitterCheck", checkVO);
	}
	
}
