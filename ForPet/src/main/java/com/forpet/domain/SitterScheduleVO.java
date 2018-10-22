package com.forpet.domain;

import java.sql.Time;

public class SitterScheduleVO {
	
	private Integer sitterNumber;
	private String scheduleType;
	private Time startHour;
	private Time endHour;

	public Integer getSitterNumber() {
		return sitterNumber;
	}

	public void setSitterNumber(Integer sitterNumber) {
		this.sitterNumber = sitterNumber;
	}

	public String getScheduleType() {
		return scheduleType;
	}

	public void setScheduleType(String scheduleType) {
		this.scheduleType = scheduleType;
	}

	public Time getStartHour() {
		return startHour;
	}

	public void setStartHour(Time startHour) {
		this.startHour = startHour;
	}

	public Time getEndHour() {
		return endHour;
	}

	public void setEndHour(Time endHour) {
		this.endHour = endHour;
	}

	@Override
	public String toString() {
		return "SitterScheduleVO [sitterNumber=" + sitterNumber + ", scheduleType=" + scheduleType + ", startHour="
				+ startHour + ", endHour=" + endHour + "]";
	}
}
