package com.booke.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.booke.model.dto.BookeDto;

@Repository
public class BookeDaoImpl implements BookeDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public List<BookeDto> selectList() {
		List<BookeDto> list = new ArrayList<BookeDto>();
		
		try {
			list = sqlSession.selectList(NAMESPACE + "selectList");
			
		} catch (Exception e) {
			System.out.println("[error] : select list");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public BookeDto selectOne(int myno) {
		BookeDto dto = new BookeDto();
		
		try {
			dto = sqlSession.selectOne(NAMESPACE + "selectOne", myno);
			
		} catch (Exception e) {
			System.out.println("[error] : select ont");
			e.printStackTrace();
		}
		
		return dto;
	}

	@Override
	public int insert(BookeDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.insert(NAMESPACE + "insert", dto);
			
		} catch (Exception e) {
			System.out.println("[error] : insert");
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int update(BookeDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE + "update", dto);
		} catch (Exception e) {
			System.out.println("[error] : update");
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int delete(int myno) {
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE + "delete", myno);
		} catch (Exception e) {
			System.out.println("[error] : delete");
			e.printStackTrace();
		}
		return res;
	}

}
