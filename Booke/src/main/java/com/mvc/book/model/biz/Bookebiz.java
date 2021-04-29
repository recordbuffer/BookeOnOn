package com.mvc.book.model.biz;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.mvc.book.model.dto.BkDto;
import com.mvc.book.model.dto.BookDto;
import com.mvc.book.model.dto.FriendDto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.MsgDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

public interface BookeBiz {


	
	
	
	// [ 서재 기능_통계 ]
	// 매년간 목표량 설정 > 통계분석
	public int Y_amount(int yearStats,int yearTarget);
	public int M_amount(int monthStats,int monthTarget);

	// 목표량 삭제
	public int deleteStats(int monthTarget,int yearTarget);
	// 목표량 수정
	public int updateStats(int monthTarget,int yearTarget);
	
	
	