package com.mvc.book.model.dao;

import java.util.List;

import com.mvc.book.model.dto.NoticeDto;

public interface NoticeDao {
	String NAMESPACE = "mybooke.";

	//[공지사항]
	//공지사항 모두 보기
	public List<NoticeDto> selectList();
	
	//공지사항 하나 보기
	public NoticeDto selectOne(int bd_no);
	
	//공지사항 글쓰기
	public int insert(NoticeDto dto);
	
	//공지사항 글수정
	public int update(NoticeDto dto);
	
	//공지사항 글삭제
	public int delete(int bd_no);
	
}
