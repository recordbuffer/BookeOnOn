package com.mvc.book.model.dto;

public class FriendDto {
	//친구 정보
	private int flist_no;			//친구 번호
	private String m1;				//회원번호1_친구 건 사람
	private String m2;				//회원번호2_친구 받은 사람
	
	private int fnum;				//친구 수
	
	public FriendDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FriendDto(int flist_no, String m1, String m2, int fnum) {
		super();
		this.flist_no = flist_no;
		this.m1 = m1;
		this.m2 = m2;
		this.fnum = fnum;
	}

	public int getFlist_no() {
		return flist_no;
	}

	public void setFlist_no(int flist_no) {
		this.flist_no = flist_no;
	}

	public String getM1() {
		return m1;
	}

	public void setM1(String m1) {
		this.m1 = m1;
	}

	public String getM2() {
		return m2;
	}

	public void setM2(String m2) {
		this.m2 = m2;
	}

	public int getFnum() {
		return fnum;
	}

	public void setFnum(int fnum) {
		this.fnum = fnum;
	}

	
	
}