package com.forpet.domain;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class BookingVO {

	private Integer bookingNumber;
	private Integer userNumber;
	private Timestamp bookingDate;
	private String pickupAddress;
	private String bookingAddress;
	private int ServicePrice;
	private int extraServicePrice;
	private int toralPrice;
	private String progressState;
	
	private List<BookingScheduleVO> bookingScheduleVO = new ArrayList<>();

	public Integer getBookingNumber() {
		return bookingNumber;
	}

	public void setBookingNumber(Integer bookingNumber) {
		this.bookingNumber = bookingNumber;
	}

	public Integer getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(Integer userNumber) {
		this.userNumber = userNumber;
	}

	public Timestamp getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(Timestamp bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getPickupAddress() {
		return pickupAddress;
	}

	public void setPickupAddress(String pickupAddress) {
		this.pickupAddress = pickupAddress;
	}

	public String getBookingAddress() {
		return bookingAddress;
	}

	public void setBookingAddress(String bookingAddress) {
		this.bookingAddress = bookingAddress;
	}

	public int getServicePrice() {
		return ServicePrice;
	}

	public void setServicePrice(int servicePrice) {
		ServicePrice = servicePrice;
	}

	public int getExtraServicePrice() {
		return extraServicePrice;
	}

	public void setExtraServicePrice(int extraServicePrice) {
		this.extraServicePrice = extraServicePrice;
	}

	public int getToralPrice() {
		return toralPrice;
	}

	public void setToralPrice(int toralPrice) {
		this.toralPrice = toralPrice;
	}

	public String getProgressState() {
		return progressState;
	}

	public void setProgressState(String progressState) {
		this.progressState = progressState;
	}

	@Override
	public String toString() {
		return "BookingVO [bookingNumber=" + bookingNumber + ", userNumber=" + userNumber + ", bookingDate=" + bookingDate
				+ ", pickupAddress=" + pickupAddress + ", bookingAddress=" + bookingAddress + ", ServicePrice=" + ServicePrice
				+ ", extraServicePrice=" + extraServicePrice + ", toralPrice=" + toralPrice + ", progressState=" + progressState
				+ "]";
	}
}
