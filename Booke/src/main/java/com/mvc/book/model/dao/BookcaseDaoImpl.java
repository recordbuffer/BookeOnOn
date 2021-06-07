package com.mvc.book.model.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

@Repository
public class BookcaseDaoImpl implements BookcaseDao{

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public List<W_bookDto> W_bookSelectAll(int be_no) {
		List<W_bookDto> list = new ArrayList<W_bookDto>();
		
			try {
				list = sqlSession.selectList(NAMESPACE + "wbList", be_no);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		return list;
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
		List<R_bookDto> list = new ArrayList<R_bookDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE+"rbList",be_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
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
