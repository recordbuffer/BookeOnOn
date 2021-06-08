package com.mvc.book.model.dao;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.mvc.book.model.dto.MemberDto;

public interface MemberDao {
	String NAMESPACE = "mybooke.";

	// [ 회원기능 ]
	// 회원가입
		public int memberJoinMethod(MemberDto dto);

		// 회원가입_아이디중복체크
		public int Idcheck(MemberDto dto);

		// 로그인
		public MemberDto login(MemberDto dto);

		// 로그인 아이디 찾기
		public String get_searchId(String be_name, String be_email);

		// 로그인 비밀번호 찾기
		public void mailSendWithPW(String be_id, String be_email, HttpServletRequest reqeust);

		// 회원 정보 조회
		public MemberDto getMemberInfo(MemberDto dto);
		
		// 회원 정보 수정
		public int modifyMemberInfo(MemberDto dto);
		
		// 회원 탈퇴
		public int deleteMember(Map map);


}
