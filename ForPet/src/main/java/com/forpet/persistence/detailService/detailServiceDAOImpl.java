package com.forpet.persistence.detailService;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.SitterDTO;

@Repository
public class detailServiceDAOImpl implements detailServiceDAO {
	
	@Inject
	SqlSession sqlSession;
	
	private static final String namespace = "forpet_SitterSchedule";

	@Override
	public List<SitterDTO> findSitterSchedule(Integer sitterNumber) throws Exception {
		return sqlSession.selectList(namespace + ".findSitterSchedule", sitterNumber);
	}

}
