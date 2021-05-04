package com.semi.group.dto;

public class GroupMappingDto {
	
	private int mapping_no;
	private String group_name;
	private String member_id;
	private String manager_yn;
	
	
	public GroupMappingDto() {
		super();
	}
	public GroupMappingDto(int mapping_no, String group_name, String member_id, String manager_yn) {
		super();
		this.mapping_no = mapping_no;
		this.group_name = group_name;
		this.member_id = member_id;
		this.manager_yn = manager_yn;
	}
	
	
	public int getMapping_no() {
		return mapping_no;
	}
	public void setMapping_no(int mapping_no) {
		this.mapping_no = mapping_no;
	}
	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getManager_yn() {
		return manager_yn;
	}
	public void setManager_yn(String manager_yn) {
		this.manager_yn = manager_yn;
	}
	
	
	@Override
	public String toString() {
		return "GroupMappingDto [mapping_no=" + mapping_no + ", group_name=" + group_name + ", member_id=" + member_id
				+ ", manager_yn=" + manager_yn + "]";
	}
	
	

}
