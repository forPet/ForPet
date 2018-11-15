package com.forpet.domain;

import java.sql.Time;
import java.sql.Timestamp;

public class MovieVO {

	private Integer movieNumber;
	private Integer bookingNumber;
	private String movieType;
	private String movieName;
	private String shootingTime;
	
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
	public String getMovieType() {
		return movieType;
	}
	public void setMovieType(String movieType) {
		this.movieType = movieType;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public String getShootingTime() {
		return shootingTime;
	}
	public void setShootingTime(String string) {
		this.shootingTime = string;
	}
	
	@Override
	public String toString() {
		return "MovieVO [movieNumber=" + movieNumber + ", bookingNumber=" + bookingNumber + ", movieType=" + movieType
				+ ", movieName=" + movieName + ", shootingTime=" + shootingTime + "]";
	}

}
