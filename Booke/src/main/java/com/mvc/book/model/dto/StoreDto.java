package com.mvc.book.model.dto;

public class StoreDto {
	private int s_no;		//서점 번호
	private String s_city;	//시
	private String s_gu;	//구
	private String s_addr;	//주소
	private String s_phone;	//전화번호
	private int s_lat;		//위도
	private int s_lon;		//경도
	
	public StoreDto() {
		super();
	}

	public StoreDto(int s_no, String s_city, String s_gu, String s_addr, String s_phone, int s_lat, int s_lon) {
		super();
		this.s_no = s_no;
		this.s_city = s_city;
		this.s_gu = s_gu;
		this.s_addr = s_addr;
		this.s_phone = s_phone;
		this.s_lat = s_lat;
		this.s_lon = s_lon;
	}

	public int getS_no() {
		return s_no;
	}

	public void setS_no(int s_no) {
		this.s_no = s_no;
	}

	public String getS_city() {
		return s_city;
	}

	public void setS_city(String s_city) {
		this.s_city = s_city;
	}

	public String getS_gu() {
		return s_gu;
	}

	public void setS_gu(String s_gu) {
		this.s_gu = s_gu;
	}

	public String getS_addr() {
		return s_addr;
	}

	public void setS_addr(String s_addr) {
		this.s_addr = s_addr;
	}

	public String getS_phone() {
		return s_phone;
	}

	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}

	public int getS_lat() {
		return s_lat;
	}

	public void setS_lat(int s_lat) {
		this.s_lat = s_lat;
	}

	public int getS_lon() {
		return s_lon;
	}

	public void setS_lon(int s_lon) {
		this.s_lon = s_lon;
	}
	
	
}
