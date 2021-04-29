package com.mvc.book.model.dao;

import com.mvc.book.model.dto.MemberDto;

public interface BookeDao {
	String NAMESPACE = "";
	
	//로그인
	public MemberDto login(MemberDto dto);
	
}