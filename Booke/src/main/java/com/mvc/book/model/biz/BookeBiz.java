package com.mvc.book.model.biz;

import java.util.Date;
import java.util.List;

import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

public interface BookeBiz {
	
	//[ 회원기능 ]
	//회원가입
	public void memberJoinMethod(MemberDto dto);
	
	//회원가입_아이디중복체크
	
	
	//로그인
	public MemberDto login(MemberDto dto);
	
	//로그인 아이디 찾기
	
	
	//로그인 비밀번호 찾기
	
	//회원 정보 수정
	
	//회원 탈퇴
	
	
	//[ 회원 친구 기능 ]
	//친구검색
	
	//친구 맺기
	
	//친구 끊기
	
	//쪽지 보내기
	
	
	//[ 책 검색 기능]
	//책 검색

	//책 검색_서재 담기 읽고 싶은 책
	
	
	//책 검색_서재 담기 읽은 책
	
	
	//[서재 기능]
	//서재 읽고 싶은 책 리스트
//	public List<W_bookDto> W_bookSelectAll();
	
	//서재 읽고 싶은 책 삭제
//	public int W_bookDel(W_bookDto no);
	
	//서재 읽은 책 리스트
//	public List<R_bookDto> R_bookSelectAll();
	
	//서재 읽은 책 삭제
//	public int R_bookDelete(R_bookDto no);
	
    //서재 읽은 책 날짜 수정
//	public Date R_bookUpdate(R_bookDto date);
	
	//서재 캘린더 API에 띄우기
		
	//내 년간 목표량 설정 > 통계분석
	
	//목표량 삭제 
	
	//목표량 수정
	
	
	
	//[커뮤니티 소모임]
	//소모임 개설
//	public int makeCommunityRoom(BkDto no);
	//소모임 리스트 + 정보 띄우기
//	public List<BkDto>communityListAll();
	//소모임 방 입장
//	public BkDto community(int no);
	//소모임 지우기
//	public String communityDel(BkDto dto);
	//채팅 불러오기
//	public void groupChat();
	//채팅 멤버
//	public void groupCharMember(MemberDto dto);
	//채팅 입력
//	public String insertChat();
	//
	
	
	//관리자 기능
	// 회원 정보 조회
	
	
	// 회원 등급 조정 
	
	
	//회원 강제 탈퇴
	
	
}