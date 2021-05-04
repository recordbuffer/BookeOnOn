package com.semi.freecomment.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.semi.freecomment.dto.FreeCommentDto;

import common.JDBCTemplate;

public class FreeCommentDao extends JDBCTemplate {
	
	
	
	
	public List<FreeCommentDto> allComment(int seq) {
		Connection con = getConnection();
		PreparedStatement pstm = null;
		ResultSet rs = null;
		List<FreeCommentDto> list = new ArrayList<FreeCommentDto>();
		String sql = " SELECT * FROM FREE_COMMENT WHERE FREE_BOARD_NUM=? ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, seq);
			System.out.println(seq);
			System.out.println("03. query실행 " + sql );
			
			rs = pstm.executeQuery();
			
			
			System.out.println("04. query 실행 및 리턴 ");
			while(rs.next()) {
			FreeCommentDto tmp = new FreeCommentDto(rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getDate(4),rs.getString(5));
				
			
			
			list.add(tmp);
			
	
			}
			

		} catch (SQLException e) {
			System.out.println("3/4단계 오류 ");
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
			close(rs);
			
		}
		
		
		
		
		return list;
		
	}
	
	
	public int insert(FreeCommentDto com_dto) {
		
		Connection con = getConnection();
		
		PreparedStatement pstm = null;
		int res = 0;
		String sql = " INSERT INTO FREE_COMMENT VALUES(COMMENT_SEQ.NEXTVAL, ?, ?, SYSDATE, ?) ";
		
		try {
			pstm = con.prepareStatement(sql);
			pstm.setInt(1, com_dto.getFree_board_num());
			pstm.setString(2, com_dto.getFree_com_id());
			pstm.setString(3, com_dto.getFree_com_content());
			System.out.println("03. query 연결 " + sql);
			
			res = pstm.executeUpdate();
			
			if(res>0) {
				commit(con);
			}
			
			
			System.out.println("04. query 실행 및 리턴 ");
			
		} catch (SQLException e) {
			System.out.println("3/4단계 에러 ");
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con);
		}
		
		
		
		return res;
		
	}
	
	
	public int delete(int free_com_seq) {
		
		return 0;
	}
	
	
	

}
