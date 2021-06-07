package com.mvc.book.model.dao;

import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

public interface kakaodbdao {
	
	String NAMESPACE = "mybooke.";
	
	public int insert(W_bookDto dto);
	
	public int winsert(R_bookDto dto);
	

}
