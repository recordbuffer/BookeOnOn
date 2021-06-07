package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.book.model.dto.BookDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

@Service
public class BSearchBizImpl implements BSearchBiz{

	@Override
	public List<BookDto> bserch(BookDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int bookWanna(W_bookDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int bookRead(R_bookDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
