package com.forpet.domain;

import java.util.Date;

public class UserPetVO {
	
	private Integer petNumber;
	private Integer userNumber;
	private String petType;
	private String petName;
	private String petGender;
	private int petWeight;
	private Date petDateOfBirth;

	public Integer getPetNumber() {
		return petNumber;
	}

	public void setPetNumber(Integer petNumber) {
		this.petNumber = petNumber;
	}

	public Integer getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(Integer userNumber) {
		this.userNumber = userNumber;
	}

	public String getPetType() {
		return petType;
	}

	public void setPetType(String petType) {
		this.petType = petType;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getPetGender() {
		return petGender;
	}

	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}

	public int getPetWeight() {
		return petWeight;
	}

	public void setPetWeight(int petWeight) {
		this.petWeight = petWeight;
	}

	public Date getPetDateOfBirth() {
		return petDateOfBirth;
	}

	public void setPetDateOfBirth(Date petDateOfBirth) {
		this.petDateOfBirth = petDateOfBirth;
	}

	@Override
	public String toString() {
		return "UserPetVO [petNumber=" + petNumber + ", userNumber=" + userNumber + ", petType=" + petType + ", petName="
				+ petName + ", petGender=" + petGender + ", petWeight=" + petWeight + ", petDateOfBirth=" + petDateOfBirth
				+ "]";
	}
}
