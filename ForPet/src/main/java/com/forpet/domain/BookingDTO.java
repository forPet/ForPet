package com.forpet.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BookingDTO {
	private Date bookingDate;
	private Date start;
	private Date end;
	private Integer sitterNumber;
	private Integer userNumber;
	private Integer bookingNumber;
	private String title;
	private String description;
	private String progressState;

	public String getBookingDate() {
		String newBookingDate = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(bookingDate);
		return newBookingDate;
	}

	public String getStart() {
		String newStart = new SimpleDateFormat("yyyy-MM-dd").format(start);
		return newStart;
	}

	public String getEnd() {
		String newEnd = new SimpleDateFormat("yyyy-MM-dd").format(end);
		return newEnd;
	}

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

	public Integer getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(Integer userNumber) {
		this.userNumber = userNumber;
	}

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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProgressState() {
		return progressState;
	}

	public void setProgressState(String progressState) {
		this.progressState = progressState;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	@Override
	public String toString() {
		return "BookingDTO [bookingDate=" + bookingDate + ", start=" + start + ", end=" + end + ", sitterNumber="
				+ sitterNumber + ", userNumber=" + userNumber + ", bookingNumber=" + bookingNumber + ", title=" + title
				+ ", description=" + description + ", progressState=" + progressState + "]";
	}
}
