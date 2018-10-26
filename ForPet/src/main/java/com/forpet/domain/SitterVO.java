package com.forpet.domain;

public class SitterVO {

	private Integer sitterNumber;
	private Integer userNumber;
	private String introduce;
	private String precautions;
	private int totalServiceCnt;
	private int totalServiceScore;

	private SitterServiceVO sitterServiceVO;
	private SitterServiceExtraVO sitterServiceExtraVO;
	private SitterScheduleVO sitterScheduleVO;

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

	public SitterServiceVO getSitterServiceVO() {
		return sitterServiceVO;
	}

	public void setSitterServiceVO(SitterServiceVO sitterServiceVO) {
		this.sitterServiceVO = sitterServiceVO;
	}

	public SitterServiceExtraVO getSitterServiceExtraVO() {
		return sitterServiceExtraVO;
	}

	public void setSitterServiceExtraVO(SitterServiceExtraVO sitterServiceExtraVO) {
		this.sitterServiceExtraVO = sitterServiceExtraVO;
	}

	public SitterScheduleVO getSitterScheduleVO() {
		return sitterScheduleVO;
	}

	public void setSitterScheduleVO(SitterScheduleVO sitterScheduleVO) {
		this.sitterScheduleVO = sitterScheduleVO;
	}

	@Override
	public String toString() {
		return "[sitterNumber=" + sitterNumber + ", userNumber=" + userNumber + ", introduce=" + introduce
				+ ", precautions=" + precautions + ", totalServiceCnt=" + totalServiceCnt + ", totalServiceScore="
				+ totalServiceScore + ", sitterServiceVO=" + sitterServiceVO + ", sitterServiceExtraVO=" + sitterServiceExtraVO
				+ ", sitterScheduleVO=" + sitterScheduleVO + "]";
	}
}
