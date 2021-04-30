package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;

@Service
public class FriendBizImpl implements FriendBiz{

	@Override
	public List<MemberDto> searchMember(String bd_id, String bd_nn) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FriendDto> selectFList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertFriend(FriendDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFriend(int flist_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
