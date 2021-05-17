/*
 * package com.mvc.book.model.dao;

import java.lang.reflect.Member;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

class LoginDao {//DB접근 
	private DataSource ds;
	
	LoginDao(){
		try {
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		ds = (DataSource)envContext.lookup("jdbc/myoracle");
	}catch(NamingException ne) {
		
	}
}
	//멤버클래스타입 반환하는 getM메서드 
	Member getMember(String email) {
		Connection con = null;
		PreaparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = MEMBER;
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,be_id);
		}
	}
	*/
