package com.forpet.persistence.booking;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.forpet.domain.booking.PaymentVO;

@Repository
public class PaymentImpl implements PaymentDAO{
	@Inject
	SqlSession session;
	
	private static String namespace = "com.forpet.Payment_Mapper";
	
	@Override
	public void payment(PaymentVO vo) throws Exception {
		session.insert(namespace + ".payment", vo);
	}
}
