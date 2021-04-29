package com.mvc.book.model.biz;

import java.util.List;

import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.MsgDto;
import com.mvc.book.model.dto.R_bookDto;

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
	public List<MemberDto> searchMember(String bd_id, String bd_nn);

	//친구 목록 조회
	public List<FriendDto> selectFList(); 
	
	//친구 맺기
	public int insertFriend(FriendDto dto);
	
	//친구 끊기
	public int deleteFriend(int flist_no);
	
	
	//[ 쪽지 기능 ]
	//쪽지 보내기
	public int insertMsg(MsgDto	dto);
	
	//쪽지 목록 조회
	public List<MsgDto> selectMsgList();
	
	//쪽지 하나 상세 조회
	public MsgDto selectMsg(int msg_no);
	
	//쪽지 삭제
	public int deleteMsg(int msg_no);
	
	//[ 책 검색 기능]
	//책 검색

	//책 검색_서재 담기 읽고 싶은 책
	
	
	//책 검색_서재 담기 읽은 책
	
	
	//[ 서재 기능 ]
	//서재 읽고 싶은 책 리스트 조회
	
	//서재 읽고 싶은 책 삭제
	
	//서재 읽은 책 리스트 조회
	
	//서재 읽은 책 삭제
	
	//서재 읽은 책 날짜 수정
	
	
	//[ 서재 기능_캘린더]
	//캘린더 API에서 읽은 책 리스트 조회
	public List<R_bookDto> selectRList();
	
	
	
	//[ 서재 기능_통계 ]
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
