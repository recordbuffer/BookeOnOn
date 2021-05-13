package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.FriendDao;
import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;

@Service
public class FriendBizImpl implements FriendBiz{

	@Autowired
	private FriendDao fdao;
	
	@Override
	public List<MemberDto> searchMember(String searchid) {
		return fdao.searchMember(searchid);
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
