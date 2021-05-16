package com.mvc.book.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.NoticeDto;

@Repository
public class NoticeDaoImpl implements NoticeDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<NoticeDto> selectList() {
		List<NoticeDto> list = new ArrayList<NoticeDto>();
		
		try {
			list=sqlSession.selectList(NAMESPACE+"selectList");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public NoticeDto selectOne(int bd_no) {
		NoticeDto dto = null;
		
		try {
			dto=sqlSession.selectOne(NAMESPACE+"selectOne",bd_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
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
