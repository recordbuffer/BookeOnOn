package com.mvc.book.model.biz;

import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

public interface kakaodbbiz {
	
	//카카오 db 저장용
	public int insert(W_bookDto dto);
	
	public int winsert(R_bookDto dto);
	

}
