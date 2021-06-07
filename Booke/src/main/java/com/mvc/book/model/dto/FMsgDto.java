package com.mvc.book.model.dto;

import java.util.Date;

public class FMsgDto {
	private String m1;
	private String m2;
	private int msg_no;
	private String msg_content;	
	private Date msg_date;
	
	public FMsgDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FMsgDto(String m1, String m2, int msg_no, String msg_content, Date msg_date) {
		super();
		this.m1 = m1;
		this.m2 = m2;
		this.msg_no = msg_no;
		this.msg_content = msg_content;
		this.msg_date = msg_date;
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

	public int getMsg_no() {
		return msg_no;
	}

	public void setMsg_no(int msg_no) {
		this.msg_no = msg_no;
	}

	public String getMsg_content() {
		return msg_content;
	}

	public void setMsg_content(String msg_content) {
		this.msg_content = msg_content;
	}

	public Date getMsg_date() {
		return msg_date;
	}

	public void setMsg_date(Date msg_date) {
		this.msg_date = msg_date;
	}

	
}
