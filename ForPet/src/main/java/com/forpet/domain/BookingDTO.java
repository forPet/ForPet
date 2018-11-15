package com.forpet.domain;

import java.sql.Date;

public class BookingDTO {
	
	private Integer sitterNumber;
	private Integer userNumber;
	private Integer bookingNumber;
	private String title;
	private Date start;
	private Date end;
	private String description;
	private String progressState;
	
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
	public String getProgressState() {
		return progressState;
	}
	public void setProgressState(String progressState) {
		this.progressState = progressState;
	}
	
	@Override
	public String toString() {
		return "BookingDTO [sitterNumber=" + sitterNumber + ", userNumber=" + userNumber + ", bookingNumber="
				+ bookingNumber + ", title=" + title + ", start=" + start + ", end=" + end + ", description="
				+ description + ", progressState=" + progressState + "]";
	}

}
