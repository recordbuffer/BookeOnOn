package com.mvc.book.model.dto;

import java.util.Date;

public class BookDto {
	//책 정보
	private int b_no;					//책 번호
	private String b_title;				//책 제목
	private String b_author;			//책 저자
	private String b_price;				//책 가격
	private String b_cover;				//책 표지
	private String b_categoryname;		//책 카테고리
	private String b_publisher;			//책 출판사
	private int b_starrate;				//책 별점
	private String b_introduce;			//책 간단소개
	private Date b_pubdate;				//책 출간일자
	
	
	public BookDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookDto(int b_no, String b_title, String b_author, String b_price, String b_cover, String b_categoryname,
			String b_publisher, int b_starrate, String b_introduce, Date b_pubdate) {
		super();
		this.b_no = b_no;
		this.b_title = b_title;
		this.b_author = b_author;
		this.b_price = b_price;
		this.b_cover = b_cover;
		this.b_categoryname = b_categoryname;
		this.b_publisher = b_publisher;
		this.b_starrate = b_starrate;
		this.b_introduce = b_introduce;
		this.b_pubdate = b_pubdate;
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
	public String getB_price() {
		return b_price;
	}
	public void setB_price(String b_price) {
		this.b_price = b_price;
	}
	public String getB_cover() {
		return b_cover;
	}
	public void setB_cover(String b_cover) {
		this.b_cover = b_cover;
	}
	public String getB_categoryname() {
		return b_categoryname;
	}
	public void setB_categoryname(String b_categoryname) {
		this.b_categoryname = b_categoryname;
	}
	public String getB_publisher() {
		return b_publisher;
	}
	public void setB_publisher(String b_publisher) {
		this.b_publisher = b_publisher;
	}
	public int getB_starrate() {
		return b_starrate;
	}
	public void setB_starrate(int b_starrate) {
		this.b_starrate = b_starrate;
	}
	public String getB_introduce() {
		return b_introduce;
	}
	public void setB_introduce(String b_introduce) {
		this.b_introduce = b_introduce;
	}
	public Date getB_pubdate() {
		return b_pubdate;
	}
	public void setB_pubdate(Date b_pubdate) {
		this.b_pubdate = b_pubdate;
	}
	
	
	
}