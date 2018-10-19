package com.forpet.domain.booking;

import java.sql.Date;

public class PaymentVO {
	int paymentNumber;
	int bookingNumber;
	Date paymentDate;
	String paymentType;
	int paymentPrice;

	public int getPaymentNumber() {
		return paymentNumber;
	}

	public void setPaymentNumber(int paymentNumber) {
		this.paymentNumber = paymentNumber;
	}

	public int getBookingNumber() {
		return bookingNumber;
	}

	public void setBookingNumber(int bookingNumber) {
		this.bookingNumber = bookingNumber;
	}

	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
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
