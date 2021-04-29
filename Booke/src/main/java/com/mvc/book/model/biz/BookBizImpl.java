package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.BookDao;
import com.mvc.book.model.dto.BookDto;
import com.mvc.book.model.dto.LibraryDto;
import com.mvc.book.model.dto.StoreDto;

@Service
public class BookBizImpl implements BookBiz {
	@Autowired
	private BookDao dao;

	@Override
	public List<BookDto> selectAllList() {
		
		return null;
	}

	@Override
	public List<BookDto> selectBestList(BookDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> selectNewList(BookDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> allList_liter(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> allList_novel(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> allList_comic(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> allList_textbook(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> bestList_liter(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> bestList_novel(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> bestList_comic(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> bestList_textbook(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> newList_liter(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> newList_novel(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> newList_comic(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BookDto> newList_textbook(BookDto dto, int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int starRate(BookDto dto, int rate) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<StoreDto> storeMapping(StoreDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<LibraryDto> libraryMapping(LibraryDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

}
