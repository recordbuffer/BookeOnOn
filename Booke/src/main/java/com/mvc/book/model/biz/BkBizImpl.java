package com.mvc.book.model.biz;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.BkDao;
import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.MemberDto;

@Service
public class BkBizImpl implements BkBiz{
	
	@Autowired
	private BkDao bkdao;

	@Override
	public List<BkDto> communityListAll() {
		return bkdao.communityListAll();
	}

	@Override
	public BkDto communityEnter(int bk_no) {
		return bkdao.communityEnter(bk_no);
	}

	@Override
	public int makeCommunityRoom(Map map) {
		return bkdao.makeCommunityRoom(map);
	}

	@Override
	public int updateCommunity(BkDto dto) {
		return bkdao.updateCommunity(dto);
	}

	@Override
	public int communityDel(int bk_no) {
		return bkdao.communityDel(bk_no);
	}

	
}
