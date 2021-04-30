package com.mvc.book.model.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.BookDto;

@Repository
public class BookDaoImpl implements BookDao{

	@Override
	public List<BookDto> selectAllList() {
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
	public List<BookDto> selectBestList(BookDto dto) {
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
	public List<BookDto> selectNewList(BookDto dto) {
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

}
