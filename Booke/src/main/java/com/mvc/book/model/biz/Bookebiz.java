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


	
	
	
	// [ ���� ���_��� ]
	// �ųⰣ ��ǥ�� ���� > ���м�
	public int Y_amount(int yearStats,int yearTarget);
	public int M_amount(int monthStats,int monthTarget);

	// ��ǥ�� ����
	public int deleteStats(int monthTarget,int yearTarget);
	// ��ǥ�� ����
	public int updateStats(int monthTarget,int yearTarget);
	
	
	