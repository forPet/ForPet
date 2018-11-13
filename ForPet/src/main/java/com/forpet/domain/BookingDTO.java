package com.forpet.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BookingDTO {
	private Date bookingDate;
	private String title;
	private Date start;
	private Date end;
	private String progressState;

	public String getBookingDate() {
		String newBookingDate = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(bookingDate);
		return newBookingDate;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart() {
		String newStart = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(start);
		System.out.println(newStart);
		return newStart;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public String getEnd() {
		String newEnd = new SimpleDateFormat("yyyy-MM-dd HH:mm").format(end);
		return newEnd;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public String getProgressState() {
		return progressState;
	}

	public void setProgressState(String progressState) {
		this.progressState = progressState;
	}

	@Override
	public String toString() {
		return "BookingDTO [bookingDate=" + bookingDate + ", title=" + title + ", start=" + start + ", end=" + end
				+ ", progressState=" + progressState + "]";
	}
}
