package com.mvc.book.model.dao;

import java.util.List;

import com.mvc.book.model.dto.BookDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

public interface BSearchDao {
	// [ 책 검색 기능]
	// 책 검색
	public List<BookDto> bserch(BookDto dto);

	// 책 검색_서재 담기 읽고 싶은 책
	public int bookWanna(W_bookDto dto);

	// 책 검색_서재 담기 읽은 책
	public int bookRead(R_bookDto dto);
}
