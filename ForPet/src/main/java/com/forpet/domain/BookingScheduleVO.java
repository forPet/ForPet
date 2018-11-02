package com.forpet.domain;

import java.sql.Date;

public class BookingScheduleVO{

	private Integer bookingNumber;
	private String title;
	private Date start;
	private Date end;
	private String description;

	public Integer getBookingNumber() {
		return bookingNumber;
	}
	public void setBookingNumber(Integer bookingNumber) {
		this.bookingNumber = bookingNumber;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
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
		return "BookingScheduleVO [bookingNumber=" + bookingNumber + ", title=" + title
				+ ", start=" + start + ", end=" + end + ", description=" + description + "]";
	}
	
}
