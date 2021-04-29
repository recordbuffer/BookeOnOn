package com.mvc.book.model.dto;

public class BkDto {
	//커뮤니티 회의실 정보
	private int bk_no;						//회의실 번호
	private String bk_name;					//회의실 이름
	private String bk_introduce;			//회의실 간단 소개
	private int bk_master;					//회의실 방장  회원 번호
	
	
	public BkDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BkDto(int bk_no, String bk_name, String bk_introduce, int bk_master) {
		super();
		this.bk_no = bk_no;
		this.bk_name = bk_name;
		this.bk_introduce = bk_introduce;
		this.bk_master = bk_master;
	}
	public int getBk_no() {
		return bk_no;
	}
	public void setBk_no(int bk_no) {
		this.bk_no = bk_no;
	}
	public String getBk_name() {
		return bk_name;
	}
	public void setBk_name(String bk_name) {
		this.bk_name = bk_name;
	}
	public String getBk_introduce() {
		return bk_introduce;
	}
	public void setBk_introduce(String bk_introduce) {
		this.bk_introduce = bk_introduce;
	}
	public int getBk_master() {
		return bk_master;
	}
	public void setBk_master(int bk_master) {
		this.bk_master = bk_master;
	}
	
	
}