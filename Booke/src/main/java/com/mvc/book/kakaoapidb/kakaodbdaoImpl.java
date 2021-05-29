package com.mvc.book.kakaoapidb;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class kakaodbdaoImpl implements kakaodbdao {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int insert(kakaodbdto dto) {
		
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "kakaoinsert", dto);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int winsert(kakaordto dto) {
		
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "kakaowinsert", dto);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return res;
	}


}
