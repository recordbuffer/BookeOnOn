package com.mvc.book.model.biz;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.book.model.dao.BookcaseDao;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

@Service
public class BookcaseBizImpl implements BookcaseBiz{
	
	@Autowired
	private BookcaseDao dao;

	@Override
	public List<W_bookDto> W_bookSelectAll(int be_no) {
		return dao.W_bookSelectAll(be_no);
	}

	@Override
	public int cntWbook() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int W_bookDel(W_bookDto no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<R_bookDto> R_bookSelectAll(int be_no) {
		return dao.R_bookSelectAll(be_no);
	}

	@Override
	public int cntRbook() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int R_bookDelete(R_bookDto no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Date R_bookUpdate(R_bookDto date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<R_bookDto> selectRList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int Y_amount(int yearStats, int yearTarget) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int M_amount(int monthStats, int monthTarget) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteStats(int monthTarget, int yearTarget) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateStats(int monthTarget, int yearTarget) {
		// TODO Auto-generated method stub
		return 0;
	}

}
