package com.mvc.book.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.NoticeDto;

@Repository
public class BkDaoImpl implements BkDao{
	

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int makeCommunityRoom(Map map) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"cinsert", map);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public List<BkDto> communityListAll() {
		List<BkDto> list = new ArrayList<BkDto>();
		
		try {
			list=sqlSession.selectList(NAMESPACE+"cselectAll");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public BkDto communityEnter(int bk_no) {
		BkDto dto = null;
		try {
			dto = sqlSession.selectOne(NAMESPACE+"cselectOne",bk_no);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return dto;
	}

	@Override
	public int communityDel(int bk_no) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"cdelete",bk_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int updateCommunity(BkDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE+"cupdate",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	
	
	


}
