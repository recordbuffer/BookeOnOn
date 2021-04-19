package com.booke.model.dao;

import java.util.List;

import com.booke.model.dto.BookeDto;

public interface BookeDao {
	String NAMESPACE = "mybooke.";
	
	public List<BookeDto> selectList();
	public BookeDto selectOne(int myno);
	public int insert(BookeDto dto);
	public int update(BookeDto dto);
	public int delete(int myno);
}
