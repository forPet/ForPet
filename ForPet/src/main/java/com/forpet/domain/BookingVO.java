package com.forpet.domain;

import java.sql.Timestamp;

public class BookingVO {

	private Integer bookingNumber;
	private String userId;
	private Integer userNumber;
	private Integer sitterNumber;
	private Timestamp bookingDate;
	private String pickupAddress;
	private String bookingAddress;
	private int ServicePrice;
	private int extraServicePrice;
	private int totalPrice;

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	private String progressState;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

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

	public String getProgressState() {
		return progressState;
	}

	public void setProgressState(String progressState) {
		this.progressState = progressState;
	}

	@Override
	public String toString() {
		return "BookingVO [bookingNumber=" + bookingNumber + ", userId=" + userId + ", userNumber=" + userNumber
				+ ", sitterNumber=" + sitterNumber + ", bookingDate=" + bookingDate + ", pickupAddress=" + pickupAddress
				+ ", bookingAddress=" + bookingAddress + ", ServicePrice=" + ServicePrice + ", extraServicePrice="
				+ extraServicePrice + ", totalPrice=" + totalPrice + ", progressState=" + progressState + "]";
	}
}
