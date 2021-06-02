package com.mvc.book.model.dao;

import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

public interface SavedbDao {
	
	String NAMESPACE = "savedb.";
	
	public int Rinsert(R_bookDto dto);
	public int Winsert(W_bookDto dto);
	
}
