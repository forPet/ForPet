package com.forpet.domain;

public class ListDTO {
	private String userName;
	private String introduce;
	private String userAddress;
	private int totalServiceCnt;
	private int totalServiceScore;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	
	public int getTotalServiceCnt() {
		return totalServiceCnt;
	}
	
	public void setTotalServiceCnt(int totalServiceCnt) {
		this.totalServiceCnt = totalServiceCnt;
	}
	
	public int getTotalServiceScore() {
		return totalServiceScore;
	}
	
	public void setTotalServiceScore(int totalServiceScore) {
		this.totalServiceScore = totalServiceScore;
	}
}
