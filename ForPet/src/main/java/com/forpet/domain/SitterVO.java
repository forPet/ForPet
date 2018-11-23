package com.forpet.domain;

public class SitterVO {

	private Integer sitterNumber;
	private Integer userNumber;
	private String userId;
	private String introduce;
	private String precautions;
	private int totalServiceCnt;
	private int totalServiceScore;
	
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getPrecautions() {
		return precautions;
	}
	public void setPrecautions(String precautions) {
		this.precautions = precautions;
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
	
	@Override
	public String toString() {
		return "SitterVO [sitterNumber=" + sitterNumber + ", userNumber=" + userNumber + ", userId=" + userId
				+ ", introduce=" + introduce + ", precautions=" + precautions + ", totalServiceCnt=" + totalServiceCnt
				+ ", totalServiceScore=" + totalServiceScore + "]";
	}
}
