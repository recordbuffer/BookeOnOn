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
	public int memberJoinMethod(MemberDto dto) {
		int res = 0;
		try {
			res = sqlSession.insert(NAMESPACE+"signup",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int Idcheck(MemberDto dto) {
		 int result = sqlSession.selectOne(NAMESPACE + "signuppage_idchk", dto);
		  return result;
	}

	@Override
	public MemberDto login(MemberDto dto) {
		MemberDto user = null;
		
		try {
			user = sqlSession.selectOne(NAMESPACE+"login",dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return user;
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
	public MemberDto getMemberInfo(MemberDto dto) {
		return sqlSession.selectOne(NAMESPACE+"selectMemberInfo", dto);
	}

	@Override
	public int modifyMemberInfo(MemberDto dto) {
		return sqlSession.update(NAMESPACE+"updateMemberInfo", dto);
	}

	@Override
	public int deleteMember(String be_id, String be_pw) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String loginCheck(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String level(MemberDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String forced_Admin(String be_id, String be_pw) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
