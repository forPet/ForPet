package com.forpet.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.forpet.domain.booking.PaymentVO;
import com.forpet.persistence.booking.PaymentDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
public class PaymentTest {
	@Inject
	private PaymentDAO dao;
	
	@Test
	public void payment() throws Exception {
		PaymentVO vo = new PaymentVO();
		vo.setBookingNumber(1);
		vo.setPaymentType("무통장입금");
		vo.setPaymentPrice(143500);;
		dao.payment(vo);
		System.out.println(vo);
	}
}
