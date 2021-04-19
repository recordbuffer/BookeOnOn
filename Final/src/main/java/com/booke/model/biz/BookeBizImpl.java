package com.booke.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.booke.model.dao.BookeDao;
import com.booke.model.dto.BookeDto;

@Service
public class BookeBizImpl implements BookeBiz {
	@Autowired
	private BookeDao dao;
	
	@Override
	public List<BookeDto> selectList() {
		
		return dao.selectList();
	}

	@Override
	public BookeDto selectOne(int myno) {
		
		return dao.selectOne(myno);
	}

	@Override
	public int insert(BookeDto dto) {
		
		return dao.insert(dto);
	}

	@Override
	public int update(BookeDto dto) {
		
		return dao.update(dto);
	}

	@Override
	public int delete(int myno) {
		
		return dao.delete(myno);
	}

}
