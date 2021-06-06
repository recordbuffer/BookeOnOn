package com.mvc.book.model.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.BookStatsDao;
import com.mvc.book.model.dto.BookStatsDto;

@Service
public class BookStatsBizImpl implements BookStatsBiz{
	
	@Autowired
	private BookStatsDao dao;
	
	@Override
	public List<BookStatsDto> selectList() {
		return dao.selectList();
	}

	@Override
	public List selectAllRow(String btnChart) {
		return dao.selectAllRow(btnChart);
	}
	
	@Override
	public int insert(BookStatsDto dto) {
		return dao.insert(dto);
	}
	
	@Override
	public List<BookStatsDto> getBookStatsList(BookStatsDto bookStatsDto) throws Exception{
		return dao.getBookStatsList(bookStatsDto);
	}

}