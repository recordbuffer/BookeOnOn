package com.mvc.book.model.biz;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.MsgDao;
import com.mvc.book.model.dto.MsgDto;

@Service
public class MsgBizImpl implements MsgBiz{

	@Autowired
	private MsgDao dao;

	@Override
	public int insertMsg(Map map) {
		return dao.insertMsg(map);
	}

	@Override
	public int deleteMsg(int msg_no) {
		return dao.deleteMsg(msg_no);
	}
	
}
