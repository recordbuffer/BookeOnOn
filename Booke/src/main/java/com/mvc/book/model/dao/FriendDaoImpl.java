package com.mvc.book.model.dao;

import java.util.ArrayList;
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
	public List<MemberDto> searchMember(String searchid) {
		List<MemberDto> list = new ArrayList<MemberDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"searchMember",searchid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<MemberDto> selectFList(String be_id) {
		List<MemberDto> list = new ArrayList<MemberDto>();

		try {
			list = sqlSession.selectList(NAMESPACE+"friendList",be_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
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
