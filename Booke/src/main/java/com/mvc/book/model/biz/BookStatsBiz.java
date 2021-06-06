

package com.mvc.book.model.biz;

import java.util.List;
import java.util.Map;

import com.mvc.book.model.dto.BookStatsDto;


public interface BookStatsBiz {
	public List<BookStatsDto> selectList();
	public List selectAllRow(String btnChart);
	public int insert(BookStatsDto dto);
	public List<BookStatsDto> getBookStatsList(BookStatsDto bookStatsDto) throws Exception;
}