package com.forpet.domain;

public class BookingServiceExtraVO {
	
	private Integer bookingNumber;
	private String extraServiceType;
	private String extraServiceName;
	private int extraSerivcePrice;

	public Integer getBookingNumber() {
		return bookingNumber;
	}

	public void setBookingNumber(Integer bookingNumber) {
		this.bookingNumber = bookingNumber;
	}

	public String getExtraServiceType() {
		return extraServiceType;
	}

	public void setExtraServiceType(String extraServiceType) {
		this.extraServiceType = extraServiceType;
	}

	public String getExtraServiceName() {
		return extraServiceName;
	}

	public void setExtraServiceName(String extraServiceName) {
		this.extraServiceName = extraServiceName;
	}

	public int getExtraSerivcePrice() {
		return extraSerivcePrice;
	}

	public void setExtraSerivcePrice(int extraSerivcePrice) {
		this.extraSerivcePrice = extraSerivcePrice;
	}

	@Override
	public String toString() {
		return "BookingServiceExtraVO [bookingNumber=" + bookingNumber + ", extraServiceType=" + extraServiceType
				+ ", extraServiceName=" + extraServiceName + ", extraSerivcePrice=" + extraSerivcePrice + "]";
	}
}
