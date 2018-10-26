package com.forpet.persistence.booking;

import java.util.List;

import com.forpet.domain.PaymentVO;
import com.forpet.domain.SitterVO;

public interface PaymentDAO {
	public void payment(PaymentVO vo) throws Exception;
	public SitterVO sitterSelect(int vo) throws Exception;
	public List<SitterVO> sitterServiceSel(int vo) throws Exception;
	public List<SitterVO> sitterExtra(int vo) throws Exception;
}
