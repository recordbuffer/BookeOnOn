package com.semi.group.dto;

public class GroupAllDto {
	
	private int group_no;
	private String group_name;
	
	
	public GroupAllDto() {
		super();
	}
	public GroupAllDto(int group_no, String group_name) {
		super();
		this.group_no = group_no;
		this.group_name = group_name;
	}
	
	
	public int getGroup_no() {
		return group_no;
	}
	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}
	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}
	
	
	@Override
	public String toString() {
		return "GroupAllDto [group_no=" + group_no + ", group_name=" + group_name + "]";
	}
	
	
}
