package com.mvc.book.kakaoapidb;

public interface kakaodbdao {
	
	String NAMESPACE = "mybooke.";
	
	public int insert(kakaodbdto dto);
	
	public int winsert(kakaordto dto);
	

}
