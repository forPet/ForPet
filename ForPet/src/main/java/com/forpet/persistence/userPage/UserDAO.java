package com.forpet.persistence.userPage;

import com.forpet.domain.LoginDTO;
import com.forpet.domain.UserVO;

public interface UserDAO {

	public UserVO login(LoginDTO dto) throws Exception;
	
	public UserVO userinfo(Integer uno) throws Exception;
}
