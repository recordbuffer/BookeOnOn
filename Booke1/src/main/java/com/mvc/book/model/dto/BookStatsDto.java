package com.mvc.book.model.dto;

public class BookStatsDto {
	//목표 통계 정보
    private int monthTarget;			//월별 목표
    private int yearTarget;				//년별 목표
    private int monthStats;				//월별 달성도
    private int yearStats;				//년별 달성도
    
    
	public BookStatsDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookStatsDto(int monthTarget, int yearTarget, int monthStats, int yearStats) {
		super();
		this.monthTarget = monthTarget;
		this.yearTarget = yearTarget;
		this.monthStats = monthStats;
		this.yearStats = yearStats;
	}
	public int getMonthTarget() {
		return monthTarget;
	}
	public void setMonthTarget(int monthTarget) {
		this.monthTarget = monthTarget;
	}
	public int getYearTarget() {
		return yearTarget;
	}
	public void setYearTarget(int yearTarget) {
		this.yearTarget = yearTarget;
	}
	public int getMonthStats() {
		return monthStats;
	}
	public void setMonthStats(int monthStats) {
		this.monthStats = monthStats;
	}
	public int getYearStats() {
		return yearStats;
	}
	public void setYearStats(int yearStats) {
		this.yearStats = yearStats;
	}
    
    
	
}
