package com.mvc.book.model.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.SavedbDao;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;
@Service
public class SavedbBizImpl implements SavedbBiz {

	@Autowired
	private SavedbDao dao;
	
	@Override
	public int Rinsert(R_bookDto dto) {
		return dao.Rinsert(dto);
	}

	@Override
	public int Winsert(W_bookDto dto) {
		return dao.Winsert(dto);
	}

}
