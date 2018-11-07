package com.forpet.domain;

import java.sql.Time;

public class BookingScheduleVO {

	private Integer bookingNumber;
	private String scheduleType;
	private Time startHour;
	private Time endHour;

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

	public Time getStartHour() {
		return startHour;
	}

	public void setStartHour(Time startHour) {
		this.startHour = startHour;
	}

	public Time getEndHour() {
		return endHour;
	}

	public void setEndHour(Time endHour) {
		this.endHour = endHour;
	}

	@Override
	public String toString() {
		return "BookingScheduleVO [bookingNumber=" + bookingNumber + ", scheduleType=" + scheduleType + ", startHour="
				+ startHour + ", endHour=" + endHour + "]";
	}
}
