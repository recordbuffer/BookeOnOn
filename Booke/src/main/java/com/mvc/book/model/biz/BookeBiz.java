package com.mvc.book.model.biz;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.BookDto;
import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.MsgDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

public interface BookeBiz {

	// [ 회원기능 ]
	// 회원가입
	public void memberJoinMethod(MemberDto dto);

	// 회원가입_아이디중복체크
	public boolean Idcheck(String be_id);

	// 로그인
	public MemberDto login(MemberDto dto);

	// 로그인 아이디 찾기
	public String get_searchId(String be_name, String be_email);

	// 로그인 비밀번호 찾기
	public void mailSendWithPW(String be_id, String be_email, HttpServletRequest reqeust);

	// 회원 정보 수정
	public String updateGET(HttpSession session, Model model) throws Exception;

	// 회원 탈퇴
	public int deleteMember(String be_id, String be_pw);

	
	
	
	// [ 회원 친구 기능 ]
	// 친구검색
	public List<MemberDto> searchMember(String bd_id, String bd_nn);

	// 친구 목록 조회
	public List<FriendDto> selectFList();

	// 친구 맺기
	public int insertFriend(FriendDto dto);

	// 친구 끊기
	public int deleteFriend(int flist_no);

	
	
	
	// [ 쪽지 기능 ]
	// 쪽지 보내기
	public int insertMsg(MsgDto dto);

	// 쪽지 목록 조회
	public List<MsgDto> selectMsgList();

	// 쪽지 하나 상세 조회
	public MsgDto selectMsg(int msg_no);

	// 쪽지 삭제
	public int deleteMsg(int msg_no);

	
	
	
	// [ 책 검색 기능]
	// 책 검색
	public List<BookDto> bserch(BookDto dto);

	// 책 검색_서재 담기 읽고 싶은 책

	// 책 검색_서재 담기 읽은 책


	
	
	
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

	
	
	
	// [ 서재 기능 ]
	// 서재 읽고 싶은 책 리스트
	public List<W_bookDto> W_bookSelectAll();

	// 서재 읽고 싶은 책 삭제
	public int W_bookDel(W_bookDto no);

	// 서재 읽은 책 리스트
	public List<R_bookDto> R_bookSelectAll();

	// 서재 읽은 책 삭제
	public int R_bookDelete(R_bookDto no);

	// 서재 읽은 책 날짜 수정
	public Date R_bookUpdate(R_bookDto date);

	
	
	// [ 서재 기능_캘린더]
	// 캘린더 API에서 읽은 책 리스트 조회
	public List<R_bookDto> selectRList();

	
	
	
	// [ 서재 기능_통계 ]
	// 내 년간 목표량 설정 > 통계분석
	public String getMonthTarget();

	// 월별 통계를 반환하는 메서드
	public String getYearTarget();

	// 년벌통계를 반환하는 메서드
	public void setMonthTarget(String monthstats);
	// setMonthTarget은 monthstats의 값을 전달받아 지정하는 것이기 때문에 매개변수 monthstats가 필요하다.

	public void setYearTarget(String yearstats);
	// setYearTarget은 yearstats의 값을 전달받아 지정하는 것이기 때문에 매개변수 yearstats가 필요하다

	// 목표량 삭제

	// 목표량 수정

	
	
	
	// [커뮤니티 소모임]
	// 소모임 개설
	public int makeCommunityRoom(BkDto no);

	// 소모임 리스트 + 정보 띄우기
	public List<BkDto> communityListAll();

	// 소모임 방 입장
	public BkDto community(int no);

	// 소모임 지우기
	public String communityDel(BkDto dto);

	// 채팅 불러오기

	public void groupChat();

	// 채팅 멤버
	public void groupCharMember(MemberDto dto);

	// 채팅 입력
	public String insertChat();

	// 관리자 기능
	// 회원 정보 조회
	public String loginCheck(MemberDto dto);

	// 회원 등급 조정
	public String level(MemberDto dto);

	// 회원 강제 탈퇴
	public String forced_Admin(String be_id, String be_pw);
}
