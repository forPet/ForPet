package com.forpet.domain;

public class LoginDTO {

	private int sitterNumber;
	private int userNumber;
	private String userId;
	private String userPassword;
	private boolean useCookie;
	
	public int getSitterNumber() {
		return sitterNumber;
	}
	
	public void setSitterNumber(int sitterNumber) {
		this.sitterNumber = sitterNumber;
	}
	
	public int getUserNumber() {
		return userNumber;
	}
	
	public void setUserNumber(int userNumber) {
		this.userNumber = userNumber;
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
	
	public boolean isUseCookie() {
		return useCookie;
	}
	
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	@Override
	public String toString() {
		return "LoginDTO [sitterNumber=" + sitterNumber + ", userNumber=" + userNumber + ", userId=" + userId
				+ ", userPassword=" + userPassword + ", useCookie=" + useCookie + "]";
	}
}
