package com.forpet.domain;

public class SitterVO {

	private int sitterNumber;
	private int userNumber;
	private String introduce;
	private String precautions;
	private int totalServiceCnt;
	private int totalServiceScore;

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
		return "SitterVO [sitterNumber=" + sitterNumber + ", userNumber=" + userNumber + ", introduce=" + introduce
				+ ", precautions=" + precautions + ", totalServiceCnt=" + totalServiceCnt + ", totalServiceScore="
				+ totalServiceScore + "]";
	}
}