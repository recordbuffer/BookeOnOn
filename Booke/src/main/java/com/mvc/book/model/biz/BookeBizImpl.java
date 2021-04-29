package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.BookeDao;
import com.mvc.book.model.dto.BookeR;
import com.mvc.book.model.dto.BookeW;
import com.mvc.book.model.dto.Bookeserch;

@Service
public class BookeBizImpl implements BookeBiz{

	@Autowired
	private BookeDao dao;
	
	@Override
	public Bookeserch bserch(Bookeserch dto) {
		return null;
	}

	@Override
	public int bookWanna(BookeW dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int bookRead(BookeR dto) {
		// TODO Auto-generated method stub
		return 0;
	}


	


}