package com.mvc.book.model.dto;

public class LibraryDto {
	//도서관 정보
	private int l_no;		//도서관 번호
	private String l_city;	//시
	private String l_gu;	//구
	private String l_addr;	//주소
	private String l_phone;	//전화번호
	private int l_lat;		//위도
	private int l_lon;		//경도
	
	
	public LibraryDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LibraryDto(int l_no, String l_city, String l_gu, String l_addr, String l_phone, int l_lat, int l_lon) {
		super();
		this.l_no = l_no;
		this.l_city = l_city;
		this.l_gu = l_gu;
		this.l_addr = l_addr;
		this.l_phone = l_phone;
		this.l_lat = l_lat;
		this.l_lon = l_lon;
	}
	public int getL_no() {
		return l_no;
	}
	public void setL_no(int l_no) {
		this.l_no = l_no;
	}
	public String getL_city() {
		return l_city;
	}
	public void setL_city(String l_city) {
		this.l_city = l_city;
	}
	public String getL_gu() {
		return l_gu;
	}
	public void setL_gu(String l_gu) {
		this.l_gu = l_gu;
	}
	public String getL_addr() {
		return l_addr;
	}
	public void setL_addr(String l_addr) {
		this.l_addr = l_addr;
	}
	public String getL_phone() {
		return l_phone;
	}
	public void setL_phone(String l_phone) {
		this.l_phone = l_phone;
	}
	public int getL_lat() {
		return l_lat;
	}
	public void setL_lat(int l_lat) {
		this.l_lat = l_lat;
	}
	public int getL_lon() {
		return l_lon;
	}
	public void setL_lon(int l_lon) {
		this.l_lon = l_lon;
	}



}
