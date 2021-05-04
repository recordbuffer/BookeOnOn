package com.semi.group.dto;

public class GroupInvitationDto {
	
	private int invitation_no;
	private String sender_id;
	private String receiver_id;
	private String group_name;
	private String complete_yn;
	
	
	public GroupInvitationDto() {
		super();
	}
	public GroupInvitationDto(int invitation_no, String sender_id, String receiver_id, String group_name,
			String complete_yn) {
		super();
		this.invitation_no = invitation_no;
		this.sender_id = sender_id;
		this.receiver_id = receiver_id;
		this.group_name = group_name;
		this.complete_yn = complete_yn;
	}
	
	
	public int getInvitation_no() {
		return invitation_no;
	}
	public void setInvitation_no(int invitation_no) {
		this.invitation_no = invitation_no;
	}
	public String getSender_id() {
		return sender_id;
	}
	public void setSender_id(String sender_id) {
		this.sender_id = sender_id;
	}
	public String getReceiver_id() {
		return receiver_id;
	}
	public void setReceiver_id(String receiver_id) {
		this.receiver_id = receiver_id;
	}
	public String getGroup_name() {
		return group_name;
	}
	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}
	public String getComplete_yn() {
		return complete_yn;
	}
	public void setComplete_yn(String complete_yn) {
		this.complete_yn = complete_yn;
	}
	
	
	@Override
	public String toString() {
		return "GroupInvitationDto [invitation_no=" + invitation_no + ", sender_id=" + sender_id + ", receiver_id="
				+ receiver_id + ", group_name=" + group_name + ", complete_yn=" + complete_yn + "]";
	}
	
	

}
