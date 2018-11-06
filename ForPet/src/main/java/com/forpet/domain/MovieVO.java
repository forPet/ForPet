package com.forpet.domain;

import java.sql.Date;

public class MovieVO {

	private Integer movieNumber;
	private Integer bookingNumber;
	private Integer sitterNumber;
	private String movieName;
	private Date shootinTime;
	
	public Integer getMovieNumber() {
		return movieNumber;
	}
	public void setMovieNumber(Integer movieNumber) {
		this.movieNumber = movieNumber;
	}
	public Integer getBookingNumber() {
		return bookingNumber;
	}
	public void setBookingNumber(Integer bookingNumber) {
		this.bookingNumber = bookingNumber;
	}
	public Integer getSitterNumber() {
		return sitterNumber;
	}
	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public Date getShootinTime() {
		return shootinTime;
	}
	public void setShootinTime(Date shootinTime) {
		this.shootinTime = shootinTime;
	}
	@Override
	public String toString() {
		return "MovieVO [movieNumber=" + movieNumber + ", bookingNumber=" + bookingNumber + ", sitterNumber="
				+ sitterNumber + ", movieName=" + movieName + ", shootinTime=" + shootinTime + "]";
	}

}
