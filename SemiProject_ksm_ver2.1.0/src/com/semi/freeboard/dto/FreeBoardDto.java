package com.semi.freeboard.dto;

import java.util.Date;

public class FreeBoardDto {
	
	
	/*
	
	SEQ NUMBER PRIMARY KEY,
	STATE VARCHAR2(20) NOT NULL,
	FREEBOARD_TITLE VARCHAR2(30) NOT NULL,
	FREEBOARD_WRITER VARCHAR2(30) NOT NULL,
	FREEBOARD_CONTENT VARCHAR2(4000) NOT NULL,
	FREEBOARD_DATE DATE NOT NULL,
	PRIVATE VARCHAR2(30) NOT NULL
	
	
	*/
	
	
	
	private int seq;
	private String free_state;
	private String free_title;
	private String free_writer;
	private String free_content;
	private Date free_date;
	private String free_private;
	
	
	
	public FreeBoardDto() {
		super();
	}

	

	public FreeBoardDto(int seq, String free_state, String free_title, String free_content, String free_private) {
		super();
		this.seq = seq;
		this.free_state = free_state;
		this.free_title = free_title;
		this.free_content = free_content;
		this.free_private = free_private;
	}





	public FreeBoardDto(String free_state, String free_title, String free_writer, String free_content,
		String free_private) {
	super();
	this.free_state = free_state;
	this.free_title = free_title;
	this.free_writer = free_writer;
	this.free_content = free_content;
	this.free_private = free_private;
}



	public FreeBoardDto(int seq, String free_state, String free_title, String free_writer, String free_content,
			Date free_date, String free_private) {
		super();
		this.seq = seq;
		this.free_state = free_state;
		this.free_title = free_title;
		this.free_writer = free_writer;
		this.free_content = free_content;
		this.free_date = free_date;
		this.free_private = free_private;
	}



	public int getSeq() {
		return seq;
	}



	public void setSeq(int seq) {
		this.seq = seq;
	}



	public String getFree_state() {
		return free_state;
	}



	public void setFree_state(String free_state) {
		this.free_state = free_state;
	}



	public String getFree_title() {
		return free_title;
	}



	public void setFree_title(String free_title) {
		this.free_title = free_title;
	}



	public String getFree_writer() {
		return free_writer;
	}



	public void setFree_writer(String free_writer) {
		this.free_writer = free_writer;
	}



	public String getFree_content() {
		return free_content;
	}



	public void setFree_content(String free_content) {
		this.free_content = free_content;
	}



	public Date getFree_date() {
		return free_date;
	}



	public void setFree_date(Date free_date) {
		this.free_date = free_date;
	}



	public String getFree_private() {
		return free_private;
	}



	public void setFree_private(String free_private) {
		this.free_private = free_private;
	}
	
	
	
	

}
