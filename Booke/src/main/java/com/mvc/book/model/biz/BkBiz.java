package com.mvc.book.model.biz;

import java.util.List;
import java.util.Map;

import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.NoticeDto;

public interface BkBiz {
	
		// [커뮤니티 소모임]
	
		// 소모임 리스트 + 정보 띄우기
		public List<BkDto> communityListAll();
		
		// 소모임 방 입장
		public BkDto communityEnter(int bk_no);
		
		// 소모임 개설
		public int makeCommunityRoom(Map map);
		
		// 소모임 정보수정
		public int updateCommunity(BkDto dto);
		
		// 소모임 지우기
		public int communityDel(int bk_no);
		
				

		
}
