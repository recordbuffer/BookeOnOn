package com.mvc.book.model.dao;

import java.util.List;

import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.MemberDto;

public interface BkDao {
		String NAMESPACE = "";
	
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
