package com.mvc.book.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;

@Repository
public class FriendDaoImpl implements FriendDao{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
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
