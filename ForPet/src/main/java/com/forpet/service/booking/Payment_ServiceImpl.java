package com.forpet.service.booking;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.booking.PaymentVO;
import com.forpet.persistence.booking.PaymentDAO;

@Service
public class Payment_ServiceImpl implements Payment_Service{
	@Inject
	private PaymentDAO dao;
	
	@Override
	public void payment(PaymentVO vo) throws Exception {
		dao.payment(vo);
	}
}
