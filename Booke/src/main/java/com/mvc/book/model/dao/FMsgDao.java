package com.mvc.book.model.dao;

import java.util.List;
import java.util.Map;

import com.mvc.book.model.dto.FMsgDto;
import com.mvc.book.model.dto.MsgDto;

public interface FMsgDao {
	String NAMESPACE = "mybooke.";
	
	// [ 쪽지 기능 ]
	// 쪽지 목록 조회
	public List<FMsgDto> selectMsgList(String be_id);

	// 보낸 쪽지 목록 조회
	public List<FMsgDto> sendMsgList(String be_id);

	// 쪽지 하나 상세 조회
	public FMsgDto selectMsg(int msg_no);
	
}
