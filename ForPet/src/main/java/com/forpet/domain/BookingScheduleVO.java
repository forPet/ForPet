package com.forpet.domain;

import java.sql.Time;

public class BookingScheduleVO{

	private Integer bookingNumber;
	private String userId;
	private String title;
	private Time start;
	private Time end;
	private String description;
	
	public Integer getBookingNumber() {
		return bookingNumber;
	}
	public void setBookingNumber(Integer bookingNumber) {
		this.bookingNumber = bookingNumber;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Time getStart() {
		return start;
	}
	public void setStart(Time start) {
		this.start = start;
	}
	public Time getEnd() {
		return end;
	}
	public void setEnd(Time end) {
		this.end = end;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public String toString() {
		return "BookingScheduleVO [bookingNumber=" + bookingNumber + ", userId=" + userId + ", title=" + title
				+ ", start=" + start + ", end=" + end + ", description=" + description + "]";
	}
	
}
