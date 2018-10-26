package com.forpet.domain;

import java.util.Date;

public class BookingScheduleVO {

	private Integer bookingNumber;
	private Date start;
	private Date end;
	private String userId;
	private String title;
	private String description;

	public Integer getBookingNumber() {
		return bookingNumber;
	}

	public void setBookingNumber(Integer bookingNumber) {
		this.bookingNumber = bookingNumber;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "BookingScheduleVO [bookingNumber=" + bookingNumber + ", start=" + start + ", end=" + end + ", userId="
				+ userId + ", title=" + title + ", description=" + description + "]";
	}
}
