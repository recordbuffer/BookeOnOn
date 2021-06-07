package com.mvc.book.model.biz;

import java.util.List;

import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.MemberDto;

public interface BkBiz {
	
		// [커뮤니티 소모임]
		// 소모임 개설
		public int makeCommunityRoom(BkDto dto);

		// 소모임 리스트 + 정보 띄우기
		public List<BkDto> communityListAll();

		// 소모임 방 입장
		public BkDto community(int bk_no);

		// 소모임 지우기
		public String communityDel(BkDto dto);

		// 채팅 불러오기

		public void groupChat();

		// 채팅 멤버
		public void groupCharMember(MemberDto dto);

		// 채팅 입력
		public String insertChat();
}
