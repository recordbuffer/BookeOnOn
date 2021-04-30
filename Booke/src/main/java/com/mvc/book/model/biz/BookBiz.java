package com.mvc.book.model.biz;

import java.util.List;

import com.mvc.book.model.dto.BookDto;

public interface BookBiz {
	// [ 책 소개 기능]
	// 전체 : 전체 - 도서 전체 정보
	public List<BookDto> selectAllList();

	// 전체 : 문학 - 도서 전체 정보 중 문학 카테고리
	public List<BookDto> allList_liter(BookDto dto, int num);

	// 전체 : 소설 - 도서 전체 정보 중 소설 카테고리
	public List<BookDto> allList_novel(BookDto dto, int num);

	// 전체 : 만화 - 도서 전체 정보 중 만화 카테고리
	public List<BookDto> allList_comic(BookDto dto, int num);

	// 전체 : 교재 - 도서 전체 정보 중 교재 카테고리
	public List<BookDto> allList_textbook(BookDto dto, int num);

	// 베스트셀러 : 전체 - 베스트셀러 정보
	public List<BookDto> selectBestList(BookDto dto);

	// 베스트셀러 : 문학 - 베스트셀러 정보 중 문학 카테고리
	public List<BookDto> bestList_liter(BookDto dto, int num);

	// 베스트셀러 : 소설 - 베스트셀러 정보 중 소설 카테고리
	public List<BookDto> bestList_novel(BookDto dto, int num);

	// 베스트셀러 : 만화 - 베스트셀러 정보 중 만화 카테고리
	public List<BookDto> bestList_comic(BookDto dto, int num);

	// 베스트셀러 : 교재 = 베스트셀러 정보 중 교재 카테고리
	public List<BookDto> bestList_textbook(BookDto dto, int num);

	// 신간 : 전체 - 신간 정보
	public List<BookDto> selectNewList(BookDto dto);

	// 신간 : 문학 - 신간 정보 중 문학 카테고리
	public List<BookDto> newList_liter(BookDto dto, int num);

	// 신간 : 소설 - 신간 정보 중 소설 카테고리
	public List<BookDto> newList_novel(BookDto dto, int num);

	// 신간 : 만화 - 신간 정보 중 만화 카테고리
	public List<BookDto> newList_comic(BookDto dto, int num);

	// 신간 : 교재 - 신간 정보 중 교재 카테고리
	public List<BookDto> newList_textbook(BookDto dto, int num);

	// 도서 별점
	public int starRate(BookDto dto, int rate);
	// 지도api에 서점 위치 출력
	// List<StoreDto> storeMapping(StoreDto dto);
	// 지도api에 도서관 위치 출력
	// public List<LibraryDto> libraryMapping(LibraryDto dto);

}
