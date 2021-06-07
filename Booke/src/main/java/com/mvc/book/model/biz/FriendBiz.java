package com.mvc.book.model.biz;

import java.util.List;
import java.util.Map;

import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;

public interface FriendBiz {
	// [ 회원 친구 기능 ]
	// 친구검색
	public List<MemberDto> searchMember(String searchid);

	// 친구 목록 조회
	public List<MemberDto> selectFList(String be_id);
	
	
	// 친구 맺기
	public int insertFriend(Map map);

	// 친구 끊기
	public int deleteFriend(Map map);

}
