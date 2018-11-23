package com.forpet.domain;

public class SitterServiceVO {

	private Integer sitterNumber;
	private int small;
	private int medium;
	private int large;

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

	public int getSmall() {
		return small;
	}

	public void setSmall(int small) {
		this.small = small;
	}

	public int getMedium() {
		return medium;
	}

	public void setMedium(int medium) {
		this.medium = medium;
	}

	public int getLarge() {
		return large;
	}

	public void setLarge(int large) {
		this.large = large;
	}

	@Override
	public String toString() {
		return "SitterServiceVO [sitterNumber=" + sitterNumber + ", small=" + small + ", medium=" + medium + ", large="
				+ large + "]";
	}
}
