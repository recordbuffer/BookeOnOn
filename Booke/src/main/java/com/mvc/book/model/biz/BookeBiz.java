package com.mvc.book.model.biz;

import com.mvc.book.model.dto.MemberDto;

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
	
	
	//서재 읽은 책 리스트
	
	
	//서재 캘린더 API에 띄우기
	
	
	//내 년간 목표량 설정 > 통계분석
	
	//목표량 삭제 
	
	//목표량 수정
	
	
	
	//[커뮤니티 소모임]
	//소모임 개설
	
	//소모임 리스트 + 정보 띄우기
	
	//소모임 지우기
	
	
	
	
	
	//관리자 기능
	// 회원 정보 조회
	
	
	// 회원 등급 조정 
	
	
	//회원 강제 탈퇴
	
	
}
