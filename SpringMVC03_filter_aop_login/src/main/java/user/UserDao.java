package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;	
	
	public UserDao() {
		try {
			String dbURL = "jdbc:mysql://localhost:1521/KH";
			String dbID = "final";
			String dbPassword = "final";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String be_id, String be_pw) {
		String SQL = "SELECT userPassword FROM USER WHERE be_id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, be_id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getNString(1).equals(be_pw)) {
					return 1;//로긴성공
				}
				else
					return 0; //비번 불일치
			}
			return -1;//아이디없음
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류 
		
	}

}
