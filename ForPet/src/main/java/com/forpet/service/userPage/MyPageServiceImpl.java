package com.forpet.service.userPage;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.forpet.domain.BookingDTO;
import com.forpet.persistence.userPage.MyPageDAO;

@Service
public class MyPageServiceImpl implements MyPageService{
	@Inject
	MyPageDAO dao;

	@Override
	public List<BookingDTO> reservationSearch(int userNumber) throws Exception {
		return dao.reservationSearch(userNumber);
	}
}
