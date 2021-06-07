package com.mvc.book.model.dao;

import java.util.Map;

import com.mvc.book.model.dto.MsgDto;

public interface MsgDao {
	String NAMESPACE = "mybooke.";
	
	// [ 쪽지 기능 ]
	// 쪽지 보내기
	public int insertMsg(Map map);
	
	// 쪽지 삭제
	public int deleteMsg(int msg_no);

	
}
