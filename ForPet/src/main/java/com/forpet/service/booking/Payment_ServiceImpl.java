package com.forpet.service.booking;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.PaymentVO;
import com.forpet.domain.SitterVO;
import com.forpet.persistence.booking.PaymentDAO;

@Service
public class Payment_ServiceImpl implements Payment_Service{
	@Inject
	private PaymentDAO dao;
	
	@Override
	public void payment(PaymentVO vo) throws Exception {
		dao.payment(vo);
	}

	@Override
	public SitterVO sitterInfo(int vo) throws Exception {
		return dao.sitterSelect(vo);
	}

	@Override
	public List<SitterVO> sitterServiceSel(int vo) throws Exception {
		return dao.sitterServiceSel(vo);
	}

	@Override
	public List<SitterVO> sitterExtra(int vo) throws Exception {
		return dao.sitterExtra(vo);
	}
}
