package com.mvc.book.model.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
		 int result = 0;
		
		 try {
			result = sqlSession.selectOne(NAMESPACE + "signuppage_idchk", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
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
		return null;
	}

	@Override
	public void mailSendWithPW(String be_id, String be_email, HttpServletRequest reqeust) {
	}

	@Override
	public MemberDto getMemberInfo(MemberDto dto) {
		MemberDto info = null;
		
		try {
			info = sqlSession.selectOne(NAMESPACE+"selectMemberInfo", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return info;
	}

	@Override
	public int modifyMemberInfo(MemberDto dto) {
		int successCnt = 0;
		
		try {
			successCnt = sqlSession.update(NAMESPACE+"updateMemberInfo", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return successCnt;
	}

	@Override
	public int deleteMember(Map map) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE+"mdelete", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	

}
