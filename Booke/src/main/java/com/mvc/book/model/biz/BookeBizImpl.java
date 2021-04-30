package com.mvc.book.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.BookeDao;
import com.mvc.book.model.dto.MemberDto;

@Service
public class BookeBizImpl implements BookeBiz{

	@Autowired
	private BookeDao dao;
	
	@Override
	public MemberDto login(MemberDto dto) {
		return null;
	}

	@Override
	public void memberJoinMethod(MemberDto dto) {
		// TODO Auto-generated method stub
		
	}

}
