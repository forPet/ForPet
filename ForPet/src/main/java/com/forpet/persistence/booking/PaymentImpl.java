package com.forpet.persistence.booking;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.PaymentVO;
import com.forpet.domain.SitterVO;

@Repository
public class PaymentImpl implements PaymentDAO {
	@Inject
	SqlSession session;

	private static String namespace = "com.forpet.Payment_Mapper";

	@Override
	public void payment(PaymentVO vo) throws Exception {
		session.insert(namespace + ".payment", vo);
	}

	@Override
	public SitterVO sitterSelect(int vo) throws Exception {
		return session.selectOne(namespace + ".sitterSelect", vo);
	}

	@Override
	public List<SitterVO> sitterServiceSel(int vo) throws Exception {
		return session.selectList(namespace + ".sitterServiceSel", vo);
	}

	@Override
	public List<SitterVO> sitterExtra(int vo) throws Exception {
		return session.selectList(namespace + ".sitterExtra", vo);
	}
}
