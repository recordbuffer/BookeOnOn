package com.mvc.book.model.dao;

import java.util.List;

import com.mvc.book.model.dto.LibraryDto;
import com.mvc.book.model.dto.StoreDto;

public interface LocationDao {
	// 지도api에 서점 위치 출력
	 List<StoreDto> storeMapping(StoreDto dto);
	
	 // 지도api에 도서관 위치 출력
	 public List<LibraryDto> libraryMapping(LibraryDto dto);
}
