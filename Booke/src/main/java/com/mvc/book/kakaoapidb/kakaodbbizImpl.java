package com.mvc.book.kakaoapidb;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class kakaodbbizImpl implements kakaodbbiz {
	
	@Autowired
	private kakaodbdao dao;
	
	@Override
	public int insert(kakaodbdto dto) {
		
		return dao.insert(dto);
	}

	@Override
	public int winsert(kakaordto dto) {
		return dao.winsert(dto);
	}

	

}
