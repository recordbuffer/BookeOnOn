package com.mvc.book.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.NoticeDto;

@Repository
public class AdminDaoImpl implements AdminDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<NoticeDto> selectList() {
		List<NoticeDto> list = new ArrayList<NoticeDto>();
		
		try {
			list=sqlSession.selectList(NAMESPACE+"noticeAll");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public NoticeDto selectOne(int bd_no) {
		NoticeDto dto = null;
		
		try {
			dto=sqlSession.selectOne(NAMESPACE+"noticeOne",bd_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public int insert(NoticeDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE2+"noticeinsert",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int update(NoticeDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE2+"noticeupdate",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int delete(int bd_no) {
		int res = 0; 
		
		try {
			res = sqlSession.delete(NAMESPACE2+"noticedelete",bd_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public List<MemberDto> userList() {
		List<MemberDto> list = new ArrayList<MemberDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE2+"userAll");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public int userout(int be_no) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE2+"userOut",be_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int userback(int be_no) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE2+"userBack",be_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	

}
