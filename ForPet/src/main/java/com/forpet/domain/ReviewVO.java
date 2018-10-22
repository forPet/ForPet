package com.forpet.domain;

import java.sql.Timestamp;

public class ReviewVO {
	
	private Integer reviewNumber;
	private Integer sitterNumber;
	private Integer userNumber;
	private Integer bookingNumber;
	private int serviceScore;
	private String review;
	private Timestamp reviewDate;

	public Integer getReviewNumber() {
		return reviewNumber;
	}

	public void setReviewNumber(Integer reviewNumber) {
		this.reviewNumber = reviewNumber;
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

	public int getServiceScore() {
		return serviceScore;
	}

	public void setServiceScore(int serviceScore) {
		this.serviceScore = serviceScore;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public Timestamp getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Timestamp reviewDate) {
		this.reviewDate = reviewDate;
	}

	@Override
	public String toString() {
		return "ReviewVO [reviewNumber=" + reviewNumber + ", sitterNumber=" + sitterNumber + ", userNumber=" + userNumber
				+ ", bookingNumber=" + bookingNumber + ", serviceScore=" + serviceScore + ", review=" + review + ", reviewDate="
				+ reviewDate + "]";
	}
}
