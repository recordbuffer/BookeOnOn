package com.mvc.book.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.MemberDto;

@Repository
public class BkDaoImpl implements BkDao{
	

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int makeCommunityRoom(BkDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BkDto> communityListAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BkDto community(int no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String communityDel(BkDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void groupChat() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void groupCharMember(MemberDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String insertChat() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String loginCheck(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String level(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String forced_Admin(String be_id, String be_pw) {
		// TODO Auto-generated method stub
		return null;
	}


}
