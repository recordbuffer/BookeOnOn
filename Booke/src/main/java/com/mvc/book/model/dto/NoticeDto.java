package com.mvc.book.model.dto;

import java.util.Date;

public class NoticeDto {
	private int bd_no;					//공지사항 번호
	private String bd_writer;			//공지사항 글쓴이
	private String bd_nn;				//공지사항 글쓴이 닉네임
	private String bd_title;			//공지사항 제목
	private String bd_content;			//공지사항 내용
	private Date bd_date;				//공지사항 등록 일자
	
	
	public NoticeDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeDto(int bd_no, String bd_writer, String bd_nn, String bd_title, String bd_content, Date bd_date) {
		super();
		this.bd_no = bd_no;
		this.bd_writer = bd_writer;
		this.bd_nn = bd_nn;
		this.bd_title = bd_title;
		this.bd_content = bd_content;
		this.bd_date = bd_date;
	}
	public int getBd_no() {
		return bd_no;
	}
	public void setBd_no(int bd_no) {
		this.bd_no = bd_no;
	}
	public String getBd_writer() {
		return bd_writer;
	}
	public void setBd_writer(String bd_writer) {
		this.bd_writer = bd_writer;
	}
	public String getBd_nn() {
		return bd_nn;
	}
	public void setBd_nn(String bd_nn) {
		this.bd_nn = bd_nn;
	}
	public String getBd_title() {
		return bd_title;
	}
	public void setBd_title(String bd_title) {
		this.bd_title = bd_title;
	}
	public String getBd_content() {
		return bd_content;
	}
	public void setBd_content(String bd_content) {
		this.bd_content = bd_content;
	}
	public Date getBd_date() {
		return bd_date;
	}
	public void setBd_date(Date bd_date) {
		this.bd_date = bd_date;
	}
	
	
}
