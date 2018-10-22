package com.forpet.domain;

public class BookingServiceVO {
	
	private Integer bookingNumber;
	private String serviceType;
	private int servicePrice;

	public Integer getBookingNumber() {
		return bookingNumber;
	}

	public void setBookingNumber(Integer bookingNumber) {
		this.bookingNumber = bookingNumber;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public int getServicePrice() {
		return servicePrice;
	}

	public void setServicePrice(int servicePrice) {
		this.servicePrice = servicePrice;
	}

	@Override
	public String toString() {
		return "BookingServiceVO [bookingNumber=" + bookingNumber + ", serviceType=" + serviceType + ", servicePrice="
				+ servicePrice + "]";
	}
}
