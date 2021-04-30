package com.mvc.book.model.dao;

import java.util.Date;
import java.util.List;

import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

public interface BookcaseDao {
	// [ 서재 기능 ]
	// 서재 읽고 싶은 책 리스트
	public List<W_bookDto> W_bookSelectAll();

	// 서재 읽고 싶은 책 삭제
	public int W_bookDel(W_bookDto no);

	// 서재 읽은 책 리스트
	public List<R_bookDto> R_bookSelectAll();

	// 서재 읽은 책 삭제
	public int R_bookDelete(R_bookDto no);

	// 서재 읽은 책 날짜 수정
	public Date R_bookUpdate(R_bookDto date);

	
	
	// [ 서재 기능_캘린더]
	// 캘린더 API에서 읽은 책 리스트 조회
	public List<R_bookDto> selectRList();

	
	
	
	// [ 서재 기능_통계 ]
	// 매년간 목표량 설정 > 통계분석
	public int Y_amount(int yearStats, int yearTarget);

	public int M_amount(int monthStats, int monthTarget);

	// 목표량 삭제
	public int deleteStats(int monthTarget, int yearTarget);

	// 목표량 수정
	public int updateStats(int monthTarget, int yearTarget);
}
