package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.NoticeDao;
import com.mvc.book.model.dto.NoticeDto;

@Service
public class NoticeBizImpl implements NoticeBiz{

	@Autowired
	private NoticeDao dao;
	
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(NoticeDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int bd_no) {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
