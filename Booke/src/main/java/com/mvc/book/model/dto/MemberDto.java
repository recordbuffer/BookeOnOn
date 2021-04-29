package com.mvc.book.model.dto;

public class MemberDto {
	//회원 정보
	private int be_no;			//회원 번호
	private String be_id;		//회원 아이디
	private String be_pw;		//회원 비밀번호
	private String be_nn;		//회원 닉네임
	private String be_name;		//회원 이름
	private String be_addr;		//회원 주소
	private String be_phone;	//회원 폰 번호
	private String be_email;	//회원 이메일
	private String be_enabled;	//회원 탈퇴여부
	private String be_role;		//회원 등급
	
	
	public MemberDto() {
		super();
	}


	public MemberDto(int be_no, String be_id, String be_pw, String be_nn, String be_name, String be_addr,
			String be_phone, String be_email, String be_enabled, String be_role) {
		super();
		this.be_no = be_no;
		this.be_id = be_id;
		this.be_pw = be_pw;
		this.be_nn = be_nn;
		this.be_name = be_name;
		this.be_addr = be_addr;
		this.be_phone = be_phone;
		this.be_email = be_email;
		this.be_enabled = be_enabled;
		this.be_role = be_role;
	}


	public int getBe_no() {
		return be_no;
	}


	public void setBe_no(int be_no) {
		this.be_no = be_no;
	}


	public String getBe_id() {
		return be_id;
	}


	public void setBe_id(String be_id) {
		this.be_id = be_id;
	}


	public String getBe_pw() {
		return be_pw;
	}


	public void setBe_pw(String be_pw) {
		this.be_pw = be_pw;
	}


	public String getBe_nn() {
		return be_nn;
	}


	public void setBe_nn(String be_nn) {
		this.be_nn = be_nn;
	}


	public String getBe_name() {
		return be_name;
	}


	public void setBe_name(String be_name) {
		this.be_name = be_name;
	}


	public String getBe_addr() {
		return be_addr;
	}


	public void setBe_addr(String be_addr) {
		this.be_addr = be_addr;
	}


	public String getBe_phone() {
		return be_phone;
	}


	public void setBe_phone(String be_phone) {
		this.be_phone = be_phone;
	}


	public String getBe_email() {
		return be_email;
	}


	public void setBe_email(String be_email) {
		this.be_email = be_email;
	}


	public String getBe_enabled() {
		return be_enabled;
	}


	public void setBe_enabled(String be_enabled) {
		this.be_enabled = be_enabled;
	}


	public String getBe_role() {
		return be_role;
	}


	public void setBe_role(String be_role) {
		this.be_role = be_role;
	}
	
	
}
