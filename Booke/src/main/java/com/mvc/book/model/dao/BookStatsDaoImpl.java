package com.mvc.book.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.book.model.dto.BookStatsDto;

@Repository
public class BookStatsDaoImpl implements BookStatsDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override     
	public List<BookStatsDto> selectList() {
		List<BookStatsDto> list = new ArrayList<BookStatsDto>();
		try {
			list = sqlSession.selectList(NAMESPACAE+"selectList");
			} catch (Exception e) {
				System.out.println("[error] : select list");
				e.printStackTrace();
			}                           
		return list;        
	}

	@Override
	public List selectAllRow(String btnChart) {
		List<Map<String,String>> list = new ArrayList<Map<String,String>>();
		try {
			list = sqlSession.selectList(NAMESPACAE+"selectAllRow",btnChart);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	@Override     
	public int insert(BookStatsDto dto){
		int res=0;
		
		try {
			res = sqlSession.insert(NAMESPACAE+"insert",dto);
			} catch (Exception e) {
				System.out.println("[error] : insert");
				e.printStackTrace();
			}                           
		return res;        
	}
	
	@Override
	public List<BookStatsDto> getBookStatsList(BookStatsDto bookStatsDto) throws Exception {
		return sqlSession.selectList(NAMESPACAE+".getBookStatsList",bookStatsDto);
	}
}