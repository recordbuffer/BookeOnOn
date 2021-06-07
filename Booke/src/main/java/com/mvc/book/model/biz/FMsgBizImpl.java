package com.mvc.book.model.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.FMsgDao;
import com.mvc.book.model.dto.FMsgDto;
import com.mvc.book.model.dto.MsgDto;

@Service
public class FMsgBizImpl implements FMsgBiz {

	@Autowired
	private FMsgDao dao;

	@Override
	public List<FMsgDto> selectMsgList(String be_id) {
		return dao.selectMsgList(be_id);
	}

	@Override
	public List<FMsgDto> sendMsgList(String be_id) {
		return dao.sendMsgList(be_id);
	}

	@Override
	public FMsgDto selectMsg(int msg_no) {
		return dao.selectMsg(msg_no);
	}


}
