package com.mvc.book.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.BookeDao;
import com.mvc.book.model.dto.Bookeserch;

@Service
public class BookeBizImpl implements BookeBiz{

	@Autowired
	private BookeDao dao;
	
	@Override
	public Bookeserch bserch(Bookeserch dto) {
		return null;
	}

}