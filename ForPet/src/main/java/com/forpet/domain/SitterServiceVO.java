package com.forpet.domain;

public class SitterServiceVO {
	
	private Integer sitterNumber;
	private String serviceType;
	private int servicePrice;

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public int getServicePrice() {
		return servicePrice;
	}

	public void setServicePrice(int servicePrice) {
		this.servicePrice = servicePrice;
	}

	@Override
	public String toString() {
		return "SitterServiceVO [sitterNumber=" + sitterNumber + ", serviceType=" + serviceType + ", servicePrice="
				+ servicePrice + "]";
	}
}
