package com.booke.model.biz;

import java.util.List;

import com.booke.model.dto.BookeDto;

public interface BookeBiz {

	public List<BookeDto> selectList();
	public BookeDto selectOne(int myno);
	public int insert(BookeDto dto);
	public int update(BookeDto dto);
	public int delete(int myno);
}
