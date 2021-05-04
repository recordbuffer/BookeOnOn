package com.semi.file.fileDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.JDBCTemplate;

public class FileDao extends JDBCTemplate {
	
	
	public int upload(String fileName,String fileRealName) {
		
		Connection con = getConnection();
		PreparedStatement pstm = null;
		String sql = " INSERT INTO FILEDB VALUES(?,?) ";
		int res = 0;
		
		try {
			pstm = con.prepareStatement(sql);
			
			pstm.setString(1, fileName);
			pstm.setString(2, fileRealName);
			
			
			res = pstm.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstm);
			close(con); 
		}
		
		
		
		return res;
		
	}

}
