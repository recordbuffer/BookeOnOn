package com.mvc.book.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.FMsgDto;
import com.mvc.book.model.dto.MsgDto;

@Repository
public class MsgDaoImpl implements MsgDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertMsg(MsgDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<FMsgDto>selectMsgList(String be_id) {
		
		List<FMsgDto> list = new ArrayList<FMsgDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"mailAll",be_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public MsgDto selectMsg(int msg_no) {

		return null;
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
