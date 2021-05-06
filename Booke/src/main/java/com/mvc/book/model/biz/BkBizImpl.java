package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.MemberDto;

@Service
public class BkBizImpl implements BkBiz{

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


}
