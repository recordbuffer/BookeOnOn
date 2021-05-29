package com.mvc.book.kakaoapidb;

import java.util.Date;

public class kakaodbdto {
	private int r_no;
	private int be_no;
	private String b_title;
	private String b_author;
	private String b_cover;
	private Date sysdate;
	
	public kakaodbdto() {
		super();
	}
	
	public kakaodbdto(int r_no, int be_no, String b_title, String b_author, String b_cover, Date sysdate) {
		super();
		this.r_no = r_no;
		this.be_no = be_no;
		this.b_title = b_title;
		this.b_author = b_author;
		this.b_cover = b_cover;
		this.sysdate = sysdate;
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
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_author() {
		return b_author;
	}
	public void setB_author(String b_author) {
		this.b_author = b_author;
	}
	public String getB_cover() {
		return b_cover;
	}
	public void setB_cover(String b_cover) {
		this.b_cover = b_cover;
	}
	public Date getSysdate() {
		return sysdate;
	}
	public void setSysdate(Date sysdate) {
		this.sysdate = sysdate;
	}

	
	
}
