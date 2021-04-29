package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.BookeDao;
import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.MsgDto;
import com.mvc.book.model.dto.R_bookDto;

@Service
public class BookeBizImpl implements BookeBiz{

	@Autowired
	private BookeDao dao;
	
	@Override
	public MemberDto login(MemberDto dto) {
		return null;
	}

	@Override
	public void memberJoinMethod(MemberDto dto) {
		// TODO Auto-generated method stub
		
	}

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

	@Override
	public int insertMsg(MsgDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MsgDto> selectMsgList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MsgDto selectMsg(int msg_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMsg(int msg_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<R_bookDto> selectRList() {
		// TODO Auto-generated method stub
		return null;
	}

}
