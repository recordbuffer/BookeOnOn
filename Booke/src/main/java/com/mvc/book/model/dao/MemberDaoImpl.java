package com.mvc.book.model.dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.mvc.book.model.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public void memberJoinMethod(MemberDto dto) {
		
	}

	@Override
	public boolean Idcheck(String be_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberDto login(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String get_searchId(String be_name, String be_email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void mailSendWithPW(String be_id, String be_email, HttpServletRequest reqeust) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String updateGET(HttpSession session, Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteMember(String be_id, String be_pw) {
		// TODO Auto-generated method stub
		return 0;
	}

}
