package com.mvc.book.model.biz;

import java.util.Map;

import com.mvc.book.model.dto.MsgDto;

public interface MsgBiz {
	// [ 쪽지 기능 ]
	// 쪽지 보내기
	public int insertMsg(Map map);

	// 쪽지 삭제
	public int deleteMsg(int msg_no);

}