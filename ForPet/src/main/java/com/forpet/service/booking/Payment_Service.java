package com.forpet.service.booking;

import java.util.List;

import com.forpet.domain.PaymentVO;
import com.forpet.domain.SitterVO;

public interface Payment_Service {
	public void payment(PaymentVO vo) throws Exception;
	public SitterVO sitterInfo(int vo) throws Exception;
	public List<SitterVO> sitterServiceSel(int vo) throws Exception;
	public List<SitterVO> sitterExtra(int vo) throws Exception;
}
