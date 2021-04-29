package com.mvc.book.model.dto;

import java.util.Date;

public class BkmemberDto {
	//커뮤니티 회의실 회원 정보
	private int bk_no;						//회의실 번호
	private int bk_bm_no;					//회의실 회원 번호
	private String bk_bm_nn;				//회의실 회원 닉네임
	private int bk_bm_status;				//회의실 회원 상태
	private int bk_bm_grade;				//회의실 회원 등급(방장/일반회원)
	private Date bk_bm_date;				//회의실 입실 날짜
	
	
	public BkmemberDto() {
	super();
		// TODO Auto-generated constructor stub
	}
	public BkmemberDto(int bk_no, int bk_bm_no, String bk_bm_nn, int bk_bm_status, int bk_bm_grade, Date bk_bm_date) {
		super();
		this.bk_no = bk_no;
		this.bk_bm_no = bk_bm_no;
		this.bk_bm_nn = bk_bm_nn;
		this.bk_bm_status = bk_bm_status;
		this.bk_bm_grade = bk_bm_grade;
		this.bk_bm_date = bk_bm_date;
	}
	public int getBk_no() {
		return bk_no;
	}
	public void setBk_no(int bk_no) {
		this.bk_no = bk_no;
	}
	public int getBk_bm_no() {
		return bk_bm_no;
	}
	public void setBk_bm_no(int bk_bm_no) {
		this.bk_bm_no = bk_bm_no;
	}
	public String getBk_bm_nn() {
		return bk_bm_nn;
	}
	public void setBk_bm_nn(String bk_bm_nn) {
		this.bk_bm_nn = bk_bm_nn;
	}
	public int getBk_bm_status() {
		return bk_bm_status;
	}
	public void setBk_bm_status(int bk_bm_status) {
		this.bk_bm_status = bk_bm_status;
	}
	public int getBk_bm_grade() {
		return bk_bm_grade;
	}
	public void setBk_bm_grade(int bk_bm_grade) {
		this.bk_bm_grade = bk_bm_grade;
	}
	public Date getBk_bm_date() {
		return bk_bm_date;
	}
	public void setBk_bm_date(Date bk_bm_date) {
		this.bk_bm_date = bk_bm_date;
	}
	
	
}