package com.forpet.persistence.BookingProgess;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.forpet.domain.MovieVO;

@Service
public class MovieUploadDAOImpl implements MovieUploadDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "forpet_BookingProgress";

	@Override
	public void insertMovie(MovieVO mVo) throws Exception {
		sqlSession.insert(namespace + ".insertMovie", mVo);
	}
	
	

}
