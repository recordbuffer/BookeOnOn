package com.mvc.book.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.kakaodbdao;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

@Service
public class kakaodbbizImpl implements kakaodbbiz {
	
	@Autowired
	private kakaodbdao dao;
	
	@Override
	public int insert(W_bookDto dto) {
		
		return dao.insert(dto);
	}

	@Override
	public int winsert(R_bookDto dto) {
		return dao.winsert(dto);
	}

	

}
