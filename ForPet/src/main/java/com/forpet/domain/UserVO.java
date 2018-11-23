package com.forpet.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

public class UserVO {

	private Integer userNumber;			//유저 번호
	private String userName;				//유저 이름
	private String userId;					//유저 계정명
	private String userPassword;		//유저 비밀번호
	private String userGender;			//유저 성별
	private Date userDateOfBirth;		//유저 생일
	private String userPhoneNumber;	//유저 연락처
	private String userEmail;				//유저 전자우편
	private String userAddress;			//유저 주소
	private int sitterAuthority;

	private SitterVO sitterNumber;

	public Integer getUserNumber() {
		return userNumber;
	}

	public SitterVO getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(SitterVO sitterNumber) {
		this.sitterNumber = sitterNumber;
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
	//String 타입을 Date 타입으로 변환후 입력
	public void setUserDateOfBirth(String userDateOfBirth) throws Exception {
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(userDateOfBirth);
		this.userDateOfBirth = date;
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

	public int getSitterAuthority() {
		return sitterAuthority;
	}

	public void setSitterAuthority(int sitterAuthority) {
		this.sitterAuthority = sitterAuthority;
	}

	@Override
	public String toString() {
		return "UserVO [userNumber=" + userNumber + ", userName=" + userName + ", userId=" + userId + ", userPassword="
				+ userPassword + ", userGender=" + userGender + ", userDateOfBirth=" + userDateOfBirth + ", userPhoneNumber="
				+ userPhoneNumber + ", userEmail=" + userEmail + ", userAddress=" + userAddress + ", sitterAuthority="
				+ sitterAuthority + ", sitterNumber=" + sitterNumber + "]";
	}
}
