package com.mvc.book.model.dao;

import java.util.List;

import com.mvc.book.model.dto.BookDto;
import com.mvc.book.model.dto.LibraryDto;
import com.mvc.book.model.dto.StoreDto;

public interface BookDao {
	String NAMESPACE = "";
	
	public List<BookDto> selectAllList();
	public List<BookDto> selectBestList(BookDto dto);
	public List<BookDto> selectNewList(BookDto dto);
	
	public List<BookDto> allList_liter(BookDto dto, int num);
	public List<BookDto> allList_novel(BookDto dto, int num);
	public List<BookDto> allList_comic(BookDto dto, int num);
	public List<BookDto> allList_textbook(BookDto dto, int num);
	
	public List<BookDto> bestList_liter(BookDto dto, int num);
	public List<BookDto> bestList_novel(BookDto dto, int num);
	public List<BookDto> bestList_comic(BookDto dto, int num);
	public List<BookDto> bestList_textbook(BookDto dto, int num);
	
	public List<BookDto> newList_liter(BookDto dto, int num);
	public List<BookDto> newList_novel(BookDto dto, int num);
	public List<BookDto> newList_comic(BookDto dto, int num);
	public List<BookDto> newList_textbook(BookDto dto, int num);

	public int starRate(BookDto dto, int rate);
	
	public List<StoreDto> storeMapping(StoreDto dto);
	public List<LibraryDto> libraryMapping(LibraryDto dto);
}
