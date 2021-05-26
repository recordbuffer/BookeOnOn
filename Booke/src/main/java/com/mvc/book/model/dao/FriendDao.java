package com.mvc.book.model.dao;

import java.util.List;

import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;

public interface FriendDao {
	String NAMESPACE = "mybooke.";
	
	// [ 회원 친구 기능 ]
	// 친구검색
	public List<MemberDto> searchMember(String searchid);

	// 친구 목록 조회
	public List<MemberDto> selectFList(String be_id);
	

	// 친구 맺기
	public int insertFriend(FriendDto dto);

	// 친구 끊기
	public int deleteFriend(int flist_no);
	
	
}
