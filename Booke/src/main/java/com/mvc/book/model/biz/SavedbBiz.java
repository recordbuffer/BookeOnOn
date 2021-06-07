package com.mvc.book.model.biz;

import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

public interface SavedbBiz {

	public int Rinsert(R_bookDto dto);
	public int Winsert(W_bookDto dto);
}
