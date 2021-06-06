package com.mvc.book.model.dto;

import java.util.Date;

public class BookStatsDto {
	// 목표 통계 정보
	private int r_no; // 회원번호
	private int be_no; // 읽은 책
	private int target; // 목표
	private Date year; // 년월

	public BookStatsDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public BookStatsDto(int r_no, int be_no, int target, Date year) {
		super();
		this.r_no = r_no;
		this.be_no = be_no;
		this.target = target;
		this.year = year;
	}



	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public int getBe_no() {
		return be_no;
	}

	public void setBe_no(int be_no) {
		this.be_no = be_no;
	}

	public int getTarget() {
		return target;
	}

	public void setTarget(int target) {
		this.target = target;
	}

	public Date getYear() {
		return year;
	}

	public void setYear(Date year) {
		this.year = year;
	}

	
}
