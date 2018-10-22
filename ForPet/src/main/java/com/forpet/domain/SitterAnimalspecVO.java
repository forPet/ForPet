package com.forpet.domain;

public class SitterAnimalspecVO {

	private Integer sitterNumber;
	private String animalType;

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

	public String getAnimalType() {
		return animalType;
	}

	public void setAnimalType(String animalType) {
		this.animalType = animalType;
	}

	@Override
	public String toString() {
		return "SitterAnimalspecVO [sitterNumber=" + sitterNumber + ", animalType=" + animalType + "]";
	}
}
