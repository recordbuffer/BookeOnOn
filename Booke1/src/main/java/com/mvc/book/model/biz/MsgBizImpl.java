package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.book.model.dto.MsgDto;

@Service
public class MsgBizImpl implements MsgBiz{

	@Override
	public int insertMsg(MsgDto dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MsgDto> selectMsgList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MsgDto selectMsg(int msg_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMsg(int msg_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
