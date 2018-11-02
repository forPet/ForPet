package com.forpet.domain;

import java.util.Date;

public class UserVO {

	private Integer userNumber;
	private String userName;
	private String userId;
	private String userPassword;
	private String userGender;
	private Date userDateOfBirth;
	private String userPhoneNumber;
	private String userEmail;
	private String userAddress;
	private SitterVO sitterVO;
	private SitterServiceVO sitterServiceVO;

	public Integer getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(Integer userNumber) {
		this.userNumber = userNumber;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public Date getUserDateOfBirth() {
		return userDateOfBirth;
	}

	public void setUserDateOfBirth(Date userDateOfBirth) {
		this.userDateOfBirth = userDateOfBirth;
	}

	public String getUserPhoneNumber() {
		return userPhoneNumber;
	}

	public void setUserPhoneNumber(String userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public SitterVO getSitterVO() {
		return sitterVO;
	}

	public void setSitterVO(SitterVO sitterVO) {
		this.sitterVO = sitterVO;
	}

	public SitterServiceVO getSitterServiceVO() {
		return sitterServiceVO;
	}

	public void setSitterServiceVO(SitterServiceVO sitterServiceVO) {
		this.sitterServiceVO = sitterServiceVO;
	}

	@Override
	public String toString() {
		return "UserVO [userNumber=" + userNumber + ", userName=" + userName + ", userId=" + userId + ", userPassword="
				+ userPassword + ", userGender=" + userGender + ", userDateOfBirth=" + userDateOfBirth
				+ ", userPhoneNumber=" + userPhoneNumber + ", userEmail=" + userEmail + ", userAddress=" + userAddress
				+ ", sitterVO=" + sitterVO + ", sitterServiceVO=" + sitterServiceVO + "]";
	}
}
