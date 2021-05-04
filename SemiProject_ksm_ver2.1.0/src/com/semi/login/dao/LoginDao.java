package com.semi.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.semi.login.dto.LoginDto;

import common.JDBCTemplate;

public class LoginDao extends JDBCTemplate{
	
	//로그인
	public LoginDto login(String id, String pw) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		LoginDto dto = new LoginDto();
		
		String sql = "SELECT * FROM MEMBER WHERE ID=? AND PW=?";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, id);
			pstm.setString(2, pw);
			
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				dto.setNo(rs.getInt(1));
				dto.setId(rs.getString(2));
				dto.setPw(rs.getString(3));
				dto.setName(rs.getString(4));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstm);
			close(con);
		}
		
		return dto;
	}
	
	
	//회원가입 (insert)
	public int registInsert(String id, String name, String pw) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		
		String sql = " INSERT INTO MEMBER VALUES(MEMBERNOSEQ.NEXTVAL, ?, ?, ?) ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, id);
			pstm.setString(2, pw);
			pstm.setString(3, name);
			
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
		
		System.out.println("회원가입 registInsert Dao 진행");
		return res;
	}
	
	
	
	
	
	
	
	
	
	
	

}
