package com.forpet.domain;

public class UserBoughtExtraServiceVO {
	private Integer bookingNumber;
	private Integer userNumber;
	private Integer sitterNumber;
	private String extraServiceName;
	private Integer extraServiceePrice;
	private Integer count;

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

	public Integer getExtraServiceePrice() {
		return extraServiceePrice;
	}

	public void setExtraServiceePrice(Integer extraServiceePrice) {
		this.extraServiceePrice = extraServiceePrice;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "ReservationDetailDTO [bookingNumber=" + bookingNumber + ", userNumber=" + userNumber + ", sitterNumber="
				+ sitterNumber + ", extraServiceName=" + extraServiceName + ", extraServiceePrice=" + extraServiceePrice
				+ ", count=" + count + "]";
	}
}
