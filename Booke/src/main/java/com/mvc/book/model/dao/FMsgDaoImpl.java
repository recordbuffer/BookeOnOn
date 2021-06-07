package com.mvc.book.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.FMsgDto;


@Repository
public class FMsgDaoImpl implements FMsgDao{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<FMsgDto> selectMsgList(String be_id) {
		List<FMsgDto> list = new ArrayList<FMsgDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"msgAll",be_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;	
		
	}

	@Override
	public List<FMsgDto> sendMsgList(String be_id) {
		List<FMsgDto> list = new ArrayList<FMsgDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"sendmsgAll",be_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public FMsgDto selectMsg(int msg_no) {
		FMsgDto dto = null;
		
		try {
			dto = sqlSession.selectOne(NAMESPACE+"msgOne",msg_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	
	
	
}
