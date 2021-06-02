package com.mvc.book.model.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.FriendDao;
import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;

@Service
public class FriendBizImpl implements FriendBiz{

	@Autowired
	private FriendDao dao;
	
	@Override
	public List<MemberDto> searchMember(String searchid) {
		return dao.searchMember(searchid);
	}

	@Override
	public List<MemberDto> selectFList(String be_id) {
		return dao.selectFList(be_id);
	}


	@Override
	public int insertFriend(FriendDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFriend(Map map) {
		return dao.deleteFriend(map);
	}


}
