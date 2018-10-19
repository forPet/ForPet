package com.forpet.persistence.booking;

import com.forpet.domain.booking.PaymentVO;

public interface PaymentDAO {
	public void payment(PaymentVO vo) throws Exception;
}
