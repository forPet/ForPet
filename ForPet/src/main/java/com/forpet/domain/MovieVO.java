package com.forpet.domain;

import java.sql.Date;

public class MovieVO {

	private Integer movieNumber;
	private Integer bookingNumber;
	private String movieName;
	private Date shootingTime;
	
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
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public Date getShootingTime() {
		return shootingTime;
	}
	public void setShootingTime(Date shootinTime) {
		this.shootingTime = shootinTime;
	}
	@Override
	public String toString() {
		return "MovieVO [movieNumber=" + movieNumber + ", bookingNumber=" + bookingNumber + 
				", movieName=" + movieName + ", shootingTime=" + shootingTime + "]";
	}

}
