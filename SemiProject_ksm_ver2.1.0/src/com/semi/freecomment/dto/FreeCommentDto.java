package com.semi.freecomment.dto;

import java.util.Date;

public class FreeCommentDto {
	


    
    private int free_com_seq;
    private int free_board_num;
    private String free_com_id;
    private Date free_com_date;
    private String free_com_content;
    
    
	public FreeCommentDto() {
		super();
	}

	
	

	public FreeCommentDto(int free_board_num, String free_com_id, String free_com_content) {
		super();
		this.free_board_num = free_board_num;
		this.free_com_id = free_com_id;
		this.free_com_content = free_com_content;
	}




	public FreeCommentDto(int free_com_seq, int free_board_num, String free_com_id, Date free_com_date, String free_com_content) {
		super();
		this.free_com_seq = free_com_seq;
		this.free_board_num = free_board_num;
		this.free_com_id = free_com_id;
		this.free_com_date = free_com_date;
		this.free_com_content = free_com_content;
	}


	public int getFree_com_seq() {
		return free_com_seq;
	}


	public void setFree_com_seq(int free_com_seq) {
		this.free_com_seq = free_com_seq;
	}


	public int getFree_board_num() {
		return free_board_num;
	}


	public void setFree_board_num(int free_board_num) {
		this.free_board_num = free_board_num;
	}


	public String getFree_com_id() {
		return free_com_id;
	}


	public void setFree_com_id(String free_com_id) {
		this.free_com_id = free_com_id;
	}


	public Date getFree_com_date() {
		return free_com_date;
	}


	public void setFree_com_date(Date free_com_date) {
		this.free_com_date = free_com_date;
	}



	public String getFree_com_content() {
		return free_com_content;
	}


	public void setFree_com_content(String free_com_content) {
		this.free_com_content = free_com_content;
	}
	
	
	
	
    
    
    

}
