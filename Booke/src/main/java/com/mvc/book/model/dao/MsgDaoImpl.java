package com.mvc.book.model.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.MsgDto;

@Repository
public class MsgDaoImpl implements MsgDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertMsg(Map map) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE+"msgadd",map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}


	@Override
	public int deleteMsg(int msg_no) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE+"msgdel",msg_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}


}
