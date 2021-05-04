package com.semi.freeboard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.semi.freeboard.dto.FreeBoardDto;

import common.JDBCTemplate;

public class FreeBoardDao extends JDBCTemplate{
	
	
	public List<FreeBoardDto> allSelect() {
		
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<FreeBoardDto> list = new ArrayList<FreeBoardDto>();
		String sql = " SELECT * FROM FREEBOARD ";
		
		try {
			pstm = con.prepareStatement(sql);
			System.out.println("03.sql 실행 준비 완료 " + sql);
			rs = pstm.executeQuery();
			System.out.println("04.sql 실행 및 리턴");
			System.out.println(rs);
			
			while(rs.next()) {
				

				FreeBoardDto tmp = new FreeBoardDto(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getDate(6),rs.getString(7));
				
				
				list.add(tmp);
				

			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			close(rs);
		}
		
		
		
		
		return list;
	}
	
	
	public FreeBoardDto selectOne(int seq) {
		
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = " SELECT * FROM FREEBOARD WHERE SEQ=? ";
		FreeBoardDto res = null;
		
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, seq);
			
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				res = new FreeBoardDto(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getDate(6),rs.getString(7));

				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	
	public int update(FreeBoardDto free_dto) {
		
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		String sql = " UPDATE FREEBOARD SET FREE_STATE=?, FREE_TITLE=?, FREE_CONTENT=?, FREE_PRIVATE=? WHERE SEQ=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			
			pstm.setString(1, free_dto.getFree_state());
			pstm.setString(2, free_dto.getFree_title());
			pstm.setString(3, free_dto.getFree_content());
			pstm.setString(4, free_dto.getFree_private());
			pstm.setInt(5, free_dto.getSeq());
			
			System.out.println("03. sql 실행 준비 " + sql );
			
			res = pstm.executeUpdate();
			
			System.out.println("04. sql 실행 및 리턴 ");
			
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
	
	
	public int insert(FreeBoardDto free_dto) {
		
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		String sql =" INSERT INTO FREEBOARD VALUES(FREEBOARDSEQ.NEXTVAL,?,?,?,?,SYSDATE,?) ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, free_dto.getFree_state());
			pstm.setString(2, free_dto.getFree_title());
			pstm.setString(3, free_dto.getFree_content());
			pstm.setString(4, free_dto.getFree_writer());
			pstm.setString(5, free_dto.getFree_private());
			
			
			res = pstm.executeUpdate();
			
			if(res > 0 ) {
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
	
	public int delete(int seq) {
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		int res = 0;
		String sql = " DELETE FROM FREEBOARD WHERE SEQ=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, seq);
			
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
	
	public FreeBoardDto selectMyboard(String userId) {
		
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		String sql = " SELECT * FROM FREEBOARD WHERE free_writer=? ";
		FreeBoardDto res = null;
		
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, userId);
			
			rs = pstm.executeQuery();
			
			while(rs.next()) {
				res = new FreeBoardDto(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),
						rs.getString(5),rs.getDate(6),rs.getString(7));

				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return res;
	}
			
			

}
