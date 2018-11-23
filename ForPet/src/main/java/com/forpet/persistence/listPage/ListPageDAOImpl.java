package com.forpet.persistence.listPage;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.ListDTO;
import com.forpet.domain.UserVO;

@Repository
public class ListPageDAOImpl implements ListPageDAO {

	@Inject
	private SqlSession session;
	private static String namespace = "com.forpet.mapper.ListPage.ListPageMapper";
	

	@Override
	public List<ListDTO> SitterListPage(String keyword) throws Exception {
		return session.selectList(namespace+ ".SitterListPage", keyword);
	}

	@Override
	public List<UserVO> ScoreSorting() throws Exception {
		return session.selectList(namespace+ ".ScoreSortingList");
	}

}
