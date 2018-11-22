package com.forpet.domain;

public class UserBoughtExtraServiceVO {
	private Integer bookingNumber;
	private Integer userNumber;
	private Integer sitterNumber;
	private String extraServiceName;
	private String extraPrice;
	private String count;

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

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

	public String getExtraServiceName() {
		return extraServiceName;
	}

	public void setExtraServiceName(String extraServiceName) {
		this.extraServiceName = extraServiceName;
	}

	public String getExtraPrice() {
		return extraPrice;
	}

	public void setExtraPrice(String extraPrice) {
		this.extraPrice = extraPrice;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "UserBoughtExtraServiceVO [bookingNumber=" + bookingNumber + ", userNumber=" + userNumber + ", sitterNumber="
				+ sitterNumber + ", extraServiceName=" + extraServiceName + ", extraPrice=" + extraPrice + ", count=" + count
				+ "]";
	}
}
