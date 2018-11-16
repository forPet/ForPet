package com.forpet.domain;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

public class BookingVO {

	private Integer bookingNumber;
	private String userId;
	private Integer userNumber;
	private Integer sitterNumber;
	private Timestamp bookingDate;
	private String pickupAddress;
	private int ServicePrice;
	private int extraServicePrice;
	private int totalPrice;
	private String progressState;
	private String comment;
	private String title;
	private Date start;
	private Date end;

	private List<BookingVO> bookingVO;
	private List<BookingScheduleVO> bookingScheduleVO;
	private List<UserVO> userVO;
	private List<UserPetVO> userPetVO;
	private List<SitterVO> sitterVO;
	private List<MovieVO> movieVO;
	private List<TimelineVO> timelineVO;

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

	public Integer getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(Integer userNumber) {
		this.userNumber = userNumber;
	}

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

	public Timestamp getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(Timestamp bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getPickupAddress() {
		return pickupAddress;
	}

	public void setPickupAddress(String pickupAddress) {
		this.pickupAddress = pickupAddress;
	}

	public int getServicePrice() {
		return ServicePrice;
	}

	public void setServicePrice(int servicePrice) {
		ServicePrice = servicePrice;
	}

	public int getExtraServicePrice() {
		return extraServicePrice;
	}

	public void setExtraServicePrice(int extraServicePrice) {
		this.extraServicePrice = extraServicePrice;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getProgressState() {
		return progressState;
	}

	public void setProgressState(String progressState) {
		this.progressState = progressState;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public List<BookingVO> getBookingVO() {
		return bookingVO;
	}

	public void setBookingVO(List<BookingVO> bookingVO) {
		this.bookingVO = bookingVO;
	}

	public List<BookingScheduleVO> getBookingScheduleVO() {
		return bookingScheduleVO;
	}

	public void setBookingScheduleVO(List<BookingScheduleVO> bookingScheduleVO) {
		this.bookingScheduleVO = bookingScheduleVO;
	}

	public List<UserVO> getUserVO() {
		return userVO;
	}

	public void setUserVO(List<UserVO> userVO) {
		this.userVO = userVO;
	}

	public List<UserPetVO> getUserPetVO() {
		return userPetVO;
	}

	public void setUserPetVO(List<UserPetVO> userPetVO) {
		this.userPetVO = userPetVO;
	}

	public List<SitterVO> getSitterVO() {
		return sitterVO;
	}

	public void setSitterVO(List<SitterVO> sitterVO) {
		this.sitterVO = sitterVO;
	}

	public List<MovieVO> getMovieVO() {
		return movieVO;
	}

	public void setMovieVO(List<MovieVO> movieVO) {
		this.movieVO = movieVO;
	}

	public List<TimelineVO> getTimelineVO() {
		return timelineVO;
	}

	public void setTimelineVO(List<TimelineVO> timelineVO) {
		this.timelineVO = timelineVO;
	}

	@Override
	public String toString() {
		return "BookingVO [bookingNumber=" + bookingNumber + ", userId=" + userId + ", userNumber=" + userNumber
				+ ", sitterNumber=" + sitterNumber + ", bookingDate=" + bookingDate + ", pickupAddress=" + pickupAddress
				+ ", ServicePrice=" + ServicePrice + ", extraServicePrice=" + extraServicePrice + ", totalPrice=" + totalPrice
				+ ", progressState=" + progressState + ", comment=" + comment + ", title=" + title + ", start=" + start
				+ ", end=" + end + ", bookingVO=" + bookingVO + ", bookingScheduleVO=" + bookingScheduleVO + ", userVO="
				+ userVO + ", userPetVO=" + userPetVO + ", sitterVO=" + sitterVO + ", movieVO=" + movieVO + ", timelineVO="
				+ timelineVO + "]";
	}
}