package com.mvc.book.model.dao;

import com.mvc.book.model.dto.Bookeserch;

public interface BookeDao {
	
	//책검색
	public Bookeserch bserch(Bookeserch dto);

}
