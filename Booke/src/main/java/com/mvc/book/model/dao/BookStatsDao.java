package com.mvc.book.model.dao;

import java.util.List;
import java.util.Map;

import com.mvc.book.model.dto.BookStatsDto;

public interface BookStatsDao {
	String NAMESPACAE = "mybooke.";
	
	public List<BookStatsDto> selectList();
	public List selectAllRow(String btnChart);
	public int insert(BookStatsDto dto);
	public List<BookStatsDto> getBookStatsList(BookStatsDto bookStatsDto) throws Exception;
}