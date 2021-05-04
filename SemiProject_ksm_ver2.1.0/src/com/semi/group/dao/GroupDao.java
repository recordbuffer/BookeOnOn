package com.semi.group.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.semi.group.dto.GroupInvitationDto;
import com.semi.group.dto.GroupMappingDto;
import com.semi.group.dto.GroupMemberListDto;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import common.JDBCTemplate;

public class GroupDao extends JDBCTemplate{
	
	
	//해당 회원이 참여중인 그룹 전체 리스트 조회
	public List<GroupMappingDto> selectGroupAll(String member_id){
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GroupMappingDto> list = new ArrayList<GroupMappingDto>();
		
		String sql = "SELECT * FROM GROUP_MAPPING WHERE MEMBER_ID=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, member_id);
			
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				GroupMappingDto dto = new GroupMappingDto();
				
				dto.setMapping_no(rs.getInt("MAPPING_NO"));
				dto.setGroup_name(rs.getString("GROUP_NAME"));
				dto.setMember_id(rs.getString("MEMBER_ID")); 
				dto.setManager_yn(rs.getString("MANAGER_YN"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
		}
		
		return list;
	}
	
	
	//새 그룹 추가 (Group_All 테이블에 insert)
	public int GroupAllInsert(String group_name) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = "INSERT INTO GROUP_ALL VALUES(GROUP_NO_SEQ.NEXTVAL, ?)";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, group_name);
			
			res = pstm.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
		}
		
		System.out.println("dao GroupAllInsert 메소드 쿼리 실행");
		return res;
	}
	
	
	//새 그룹 추가(Group_Mapping 테이블에 insert)
	public int GroupMappingInsert(String group_name, String member_id, String manager_yn) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = "INSERT INTO GROUP_MAPPING VALUES(MAPPING_NO_SEQ.NEXTVAL, ?, ?, ?)";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, group_name);
			pstm.setString(2, member_id);
			pstm.setString(3, manager_yn);
			
			res = pstm.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
		}
		
		System.out.println("dao GroupMappingInsert 메소드 쿼리 실행");
		return res;
	}
	
	
	//초대요청을 보내는 회원이 그룹의 매니저인지 여부 확인
	//해당 그룹의 매니저인 회원의 회원id 조회하고, 그것과 초대요청 sender의 회원id가 일치하는지 여부 확인
	public boolean isManager(String group_name, String sender_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String manager_id = "";
		
		
		String sql = "SELECT MEMBER_ID  " + 
				" FROM ( SELECT * FROM GROUP_MAPPING WHERE GROUP_NAME=? ) " + 
				" WHERE MANAGER_YN='Y' ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, group_name);
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				manager_id = rs.getString(1);
			}
			
			System.out.println(manager_id);
			System.out.println(sender_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
		}
		
		return (manager_id.equals(sender_id)) ? true : false;
	}
	
	
	//그룹 초대 테이블에 insert
	public int groupInvitationInsert(String sender_id, String receiver_id, String group_name) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = "INSERT INTO GROUP_INVITATION " + 
				" VALUES(INVITATION_NO_SEQ.NEXTVAL, ?, ?, ?, 'N') ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, sender_id);
			pstm.setString(2, receiver_id);
			pstm.setString(3, group_name);
			
			res = pstm.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
		}
		
		return res;
	}


	//해당회원id로 receiver_id가 저장된 그룹초대 알림 조회하는 메소드 (초대 알림)
	public List<GroupInvitationDto> groupInvitationSelect(String recevier_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GroupInvitationDto> list = new ArrayList<GroupInvitationDto>();
		
		String sql = "SELECT * FROM GROUP_INVITATION " + 
				" WHERE RECEIVER_ID=? AND COMPLETE_YN='N'";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, recevier_id);
			
			rs = pstm.executeQuery();

			while(rs.next()) {
				GroupInvitationDto dto = new GroupInvitationDto();
				dto.setInvitation_no(rs.getInt(1));
				dto.setSender_id(rs.getString(2));
				dto.setReceiver_id(rs.getString(3));
				dto.setGroup_name(rs.getString(4));
				dto.setComplete_yn(rs.getString(5));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstm);
			close(con);
		}
		
		return list;
	}
	
	
	//그룹 초대 수락에 의한 그룹 맵핑 테이블에 insert
	public int groupInvitationMappingInsert(String group_name, String member_id) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = "INSERT INTO GROUP_MAPPING " + 
				" VALUES(MAPPING_NO_SEQ.NEXTVAL, ?, ?, 'N')";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, group_name);
			pstm.setString(2, member_id);
			
			res = pstm.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
		}
		
		return res;
	}
	
	
	//그룹초대 수락or거절에 의해서 그룹초대 테이블의 완료여부 Y로 update
	public int groupInvitationCompleteUpdate(String sender_id, String receiver_id, String group_name) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = "UPDATE GROUP_INVITATION " + 
				"SET COMPLETE_YN='Y' " + 
				"WHERE SENDER_ID=? AND RECEIVER_ID=? AND GROUP_NAME=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, sender_id);
			pstm.setString(2, receiver_id);
			pstm.setString(3, group_name);
			
			res = pstm.executeUpdate();
			
			if(res>0){
				commit(con);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
		}
		
		return res;
	}
	
	
	public List<GroupMemberListDto> groupMemberListSelect(String group_name){
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<GroupMemberListDto> list = new ArrayList<GroupMemberListDto>();
		
		String sql = "SELECT MEMBER_ID, NAME " + 
				" FROM (SELECT * " + 
				"    FROM GROUP_MAPPING GM, MEMBER M " + 
				"    WHERE GM.MEMBER_ID=M.ID) " + 
				" WHERE GROUP_NAME=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, group_name);
			
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				GroupMemberListDto dto = new GroupMemberListDto();
				dto.setMember_id(rs.getString(1));
				dto.setName(rs.getString(2));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	

}
