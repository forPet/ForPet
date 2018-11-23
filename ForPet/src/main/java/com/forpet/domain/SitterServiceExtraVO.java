package com.forpet.domain;

public class SitterServiceExtraVO {
	
	private Integer sitterNumber;
	private String extraServiceType;
	private String extraServiceName;
	private String extraSerivcePrice;

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

	public String getExtraServiceType() {
		return extraServiceType;
	}

	public void setExtraServiceType(String extraServiceType) {
		this.extraServiceType = extraServiceType;
	}

	public String getExtraServiceName() {
		return extraServiceName;
	}

	public void setExtraServiceName(String extraServiceName) {
		this.extraServiceName = extraServiceName;
	}

	public String getExtraSerivcePrice() {
		return extraSerivcePrice;
	}

	public String setExtraSerivcePrice(String extraSerivcePrice) {
		return extraSerivcePrice;
	}

	@Override
	public String toString() {
		return "SitterServiceExtraVO [sitterNumber=" + sitterNumber + ", extraServiceType=" + extraServiceType
				+ ", extraServiceName=" + extraServiceName + ", extraSerivcePrice=" + extraSerivcePrice + "]";
	}
}
