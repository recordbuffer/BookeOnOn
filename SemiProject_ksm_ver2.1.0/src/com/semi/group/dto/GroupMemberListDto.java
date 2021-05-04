package com.semi.group.dto;

public class GroupMemberListDto {

	private String member_id;
	private String name;
	
	
	public GroupMemberListDto() {
		super();
	}
	public GroupMemberListDto(String member_id, String name) {
		super();
		this.member_id = member_id;
		this.name = name;
	}
	
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	@Override
	public String toString() {
		return "GroupMemberList [member_id=" + member_id + ", name=" + name + "]";
	}
	
}
