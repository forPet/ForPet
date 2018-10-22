package com.forpet.domain;

import java.sql.Timestamp;

public class PaymentVO {
	
	private Integer paymentNumber;
	private Integer bookingNumber;
	private Timestamp paymentDate;
	private String paymentType;
	private int paymentPrice;

	public Integer getPaymentNumber() {
		return paymentNumber;
	}

	public void setPaymentNumber(Integer paymentNumber) {
		this.paymentNumber = paymentNumber;
	}

	public Integer getBookingNumber() {
		return bookingNumber;
	}

	public void setBookingNumber(Integer bookingNumber) {
		this.bookingNumber = bookingNumber;
	}

	public Timestamp getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Timestamp paymentDate) {
		this.paymentDate = paymentDate;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public int getPaymentPrice() {
		return paymentPrice;
	}

	public void setPaymentPrice(int paymentPrice) {
		this.paymentPrice = paymentPrice;
	}

	@Override
	public String toString() {
		return "PaymentVO [paymentNumber=" + paymentNumber + ", bookingNumber=" + bookingNumber + ", paymentDate="
				+ paymentDate + ", paymentType=" + paymentType + ", paymentPrice=" + paymentPrice + "]";
	}
}
