package com.forpet.domain;

public class SitterCertificateVO {
	
	private Integer sitterNumber;
	private String certificateName;

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

	public String getCertificateName() {
		return certificateName;
	}

	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}

	@Override
	public String toString() {
		return "SitterCertificateVO [sitterNumber=" + sitterNumber + ", certificateName=" + certificateName + "]";
	}
}
