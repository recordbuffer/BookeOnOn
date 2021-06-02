package com.mvc.book.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;
@Repository
public class SavedbDaoImpl implements SavedbDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int Rinsert(R_bookDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "rsavedb", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int Winsert(W_bookDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "wsavedb", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}

}
