package com.mvc.book.model.dao;

import com.mvc.book.model.dto.BookeR;
import com.mvc.book.model.dto.BookeW;
import com.mvc.book.model.dto.Bookeserch;

public interface BookeDao {
	
	//책검색
	public Bookeserch bserch(Bookeserch dto);
	
	//책 검색_서재 담기 읽고 싶은 책
	public BookeW bookWanna(BookeW dto);
	
	//책 검색_서재 담기 읽은 책
	public BookeR bookRead(BookeR dto);
	
	
	

}
