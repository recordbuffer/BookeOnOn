package com.mvc.book.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.Header;
import org.apache.http.HttpHeaders;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicHeader;
import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.mvc.book.model.biz.kakaodbbiz;
import com.mvc.book.model.dto.BookInfodto;
import com.mvc.book.model.dto.MemberDto;
import com.mvc.book.model.dto.R_bookDto;
import com.mvc.book.model.dto.W_bookDto;

@Controller
public class BookController {

	private static final Logger logger = LoggerFactory.getLogger(CommunityController.class);

	
	@Autowired
	private kakaodbbiz biz;
	
	//카카오 검색 api 
	public List<BookInfodto> getBookList(String query, String sort){
		logger.info("KAKAO BOOK SEARCH RESULT");
		
		if(query == null || query.length() == 0) {
			return new ArrayList<BookInfodto>();
		}
		final String APP_KEY = "KakaoAK 08f182b46260f0a4422dca98f05fab0f";
		StringBuilder sb = new StringBuilder();
		sb.append("https://dapi.kakao.com");
		sb.append("/v3/search/book");
		sb.append("?query=").append(query)
			.append("&sort=").append(sort)
			.append("&size=").append(9);
		
		//System.out.println(sb.toString());
		Header jsonHeader = new BasicHeader(HttpHeaders.CONTENT_TYPE, "application/json");
		Header authHeader = new BasicHeader(HttpHeaders.AUTHORIZATION, APP_KEY);
		List<Header> headers = new ArrayList<Header>();
		headers.add(jsonHeader);
		headers.add(authHeader);
		
		HttpClient httpClient = HttpClientBuilder.create()
				.setMaxConnTotal(100)
				.setMaxConnPerRoute(5)
				.setDefaultHeaders(headers)
				.build();
		
		HttpComponentsClientHttpRequestFactory factory = new HttpComponentsClientHttpRequestFactory();
		factory.setReadTimeout(5000);  //읽기 시간초과 5초
		factory.setConnectTimeout(3000); //연결 시간 초과 3초
		factory.setHttpClient(httpClient);
		
		RestTemplate restTemplate = new RestTemplate(factory);
		
		String response = restTemplate.getForObject(sb.toString(), String.class);
		System.out.println(response);
		JSONObject json = new JSONObject(response);//검색학 값을 json으로 불러오는 코드 이한줄이 끝이다.
		JSONArray bookArray = json.getJSONArray("documents");
		
		List<BookInfodto> result = new ArrayList<BookInfodto>();
		
		for(int i=0; i<bookArray.length(); i++) {
			JSONObject item = bookArray.getJSONObject(i);
			BookInfodto info = BookInfodto.parse(item);
			result.add(info);
		}
		
		return result;
	}
	
	//도서검색 읽고싶어요 db저장
    @RequestMapping(value="/kakaodb.do", method = RequestMethod.POST)
    public String kakaodb(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        logger.info("W_BOOK INSERT");

        String cover = request.getParameter("cover");
        String title = request.getParameter("title");
        String authors = request.getParameter("authors");
        String contents = request.getParameter("contents");
        System.out.println("String"+cover);
        System.out.println("String"+title);
        System.out.println("String"+authors);
        System.out.println("String"+contents);

        MemberDto user = (MemberDto)session.getAttribute("user");
		int be_no = user.getBe_no();
        
        W_bookDto dto = new W_bookDto(0, be_no, title, authors, cover, null);

        int res = biz.insert(dto);

        System.out.println(res);

        if(res>0) {
        	return "redirect:bsearch.do";
        } else {
        	return "redirect:bsearch.do";
        }
    }

    //읽은책 담기
    @RequestMapping(value="/kakaoW.do", method = RequestMethod.POST)
    public String kakaoW(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        logger.info("R_BOOK INSERT");

        String cover = request.getParameter("cover");
        String title = request.getParameter("title");
        String authors = request.getParameter("authors");
        String contents = request.getParameter("contents");
        System.out.println("String"+cover);
        System.out.println("String"+title);
        System.out.println("String"+authors);
        System.out.println("String"+contents);

        MemberDto user = (MemberDto)session.getAttribute("user");
		int be_no = user.getBe_no();
        
        
        R_bookDto dto1 = new R_bookDto(0, be_no, title, authors, cover, null);

        int res1 = biz.winsert(dto1);

        System.out.println(res1);

        if(res1>0) {
        	return "redirect:bsearch.do";
        } else {
        	return "redirect:bsearch.do";
        }
    }

}