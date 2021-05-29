package com.mvc.book.model.dao;

import java.util.List;

import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.NoticeDto;

public interface AdminDao {
	String NAMESPACE = "mybooke.";
	String NAMESPACE2 = "adminbooke.";

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
	
	//모든 회원 출력
	public List<MemberDto> userList();
	
	//회원 강제 탈퇴
	public int userout(int be_no);
	
	//회원 탈퇴 복구
	public int userback(int be_no);
	
}
