package com.mvc.book.model.dto;

public class W_bookDto {
	//서재1 읽고싶은책
	private int w_no;				//서재 번호
	private int be_no;				//회원 번호
	private int b_no;				//책 번호
	private String b_title;			//책 제목
	private String b_author;		//책 저자
	private String b_cover;			//책 커버사진
	
	
	public W_bookDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public W_bookDto(int w_no, int be_no, int b_no, String b_title, String b_author, String b_cover) {
		super();
		this.w_no = w_no;
		this.be_no = be_no;
		this.b_no = b_no;
		this.b_title = b_title;
		this.b_author = b_author;
		this.b_cover = b_cover;
	}
	public int getW_no() {
		return w_no;
	}
	public void setW_no(int w_no) {
		this.w_no = w_no;
	}
	public int getBe_no() {
		return be_no;
	}
	public void setBe_no(int be_no) {
		this.be_no = be_no;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
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
	
	
}
