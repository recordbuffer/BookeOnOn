package com.mvc.book.model.dto;

import java.util.Date;

public class CommentDto {
	// 책 댓글 정보
	private int bc_no; 								// 댓글 번호
	private int b_no; 								// 책 번호
	private String writer_id; 						// 댓글 작성자 아이디
	private String bc_content; 						// 댓글 내용
	private Date bc_date; 							// 댓글 작성 날짜

	public CommentDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentDto(int bc_no, int b_no, String writer_id, String bc_content, Date bc_date) {
		super();
		this.bc_no = bc_no;
		this.b_no = b_no;
		this.writer_id = writer_id;
		this.bc_content = bc_content;
		this.bc_date = bc_date;
	}

	public int getBc_no() {
		return bc_no;
	}

	public void setBc_no(int bc_no) {
		this.bc_no = bc_no;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getWriter_id() {
		return writer_id;
	}

	public void setWriter_id(String writer_id) {
		this.writer_id = writer_id;
	}

	public String getBc_content() {
		return bc_content;
	}

	public void setBc_content(String bc_content) {
		this.bc_content = bc_content;
	}

	public Date getBc_date() {
		return bc_date;
	}

	public void setBc_date(Date bc_date) {
		this.bc_date = bc_date;
	}

	
}