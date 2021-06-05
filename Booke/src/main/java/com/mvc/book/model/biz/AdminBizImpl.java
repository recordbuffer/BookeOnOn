package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.AdminDao;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.NoticeDto;

@Service
public class AdminBizImpl implements AdminBiz{

	@Autowired
	private AdminDao dao;
	
	@Override
	public List<NoticeDto> selectList() {
		return dao.selectList();
	}

	@Override
	public NoticeDto selectOne(int bd_no) {
		return dao.selectOne(bd_no);
	}

	@Override
	public int insert(NoticeDto dto) {
		return dao.insert(dto);
	}

	@Override
	public int update(NoticeDto dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(int bd_no) {
		return dao.delete(bd_no);
	}

	@Override
	public List<MemberDto> userList() {
		return dao.userList();
	}

	@Override
	public int userout(int be_no) {
		return dao.userout(be_no);
	}

	@Override
	public int userback(int be_no) {
		return dao.userback(be_no);
	}
	

}
