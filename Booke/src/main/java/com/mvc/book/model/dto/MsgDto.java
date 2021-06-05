package com.mvc.book.model.dto;

import java.util.Date;
import java.util.List;

public class MsgDto {
	//쪽지 정보
	private int msg_no;					//쪽지 번호
	private String flist_no;			//친구 번호
	private String msg_content;			//쪽지 내용
	private Date msg_date;				//쪽지 날짜
	
	private FriendDto frienddto;
	
	public MsgDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MsgDto(int msg_no, String flist_no, String msg_content, Date msg_date, FriendDto frienddto) {
		super();
		this.msg_no = msg_no;
		this.flist_no = flist_no;
		this.msg_content = msg_content;
		this.msg_date = msg_date;
		this.frienddto = frienddto;
	}

	public int getMsg_no() {
		return msg_no;
	}

	public void setMsg_no(int msg_no) {
		this.msg_no = msg_no;
	}

	public String getFlist_no() {
		return flist_no;
	}

	public void setFlist_no(String flist_no) {
		this.flist_no = flist_no;
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

	public FriendDto getFrienddto() {
		return frienddto;
	}

	public void setFrienddto(FriendDto frienddto) {
		this.frienddto = frienddto;
	}

	
	
}
