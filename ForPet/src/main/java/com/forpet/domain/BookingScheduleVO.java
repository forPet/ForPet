package com.forpet.domain;

import java.util.Date;

public class BookingScheduleVO {

	private Integer bookingNumber;
	private String scheduleType;
	private Date startHour;
	private Date endHour;

	public Integer getBookingNumber() {
		return bookingNumber;
	}

	public void setBookingNumber(Integer bookingNumber) {
		this.bookingNumber = bookingNumber;
	}

	public String getScheduleType() {
		return scheduleType;
	}

	public void setScheduleType(String scheduleType) {
		this.scheduleType = scheduleType;
	}

	public Date getStartHour() {
		return startHour;
	}

	public void setStartHour(Date startHour) {
		this.startHour = startHour;
	}

	public Date getEndHour() {
		return endHour;
	}

	public void setEndHour(Date endHour) {
		this.endHour = endHour;
	}

	@Override
	public String toString() {
		return "BookingScheduleVO [bookingNumber=" + bookingNumber + ", scheduleType=" + scheduleType + ", startHour="
				+ startHour + ", endHour=" + endHour + "]";
	}
}
