package com.mvc.book.kakaoapi;

import java.util.ArrayList;
import java.util.List;

import org.apache.http.Header;
import org.apache.http.HttpHeaders;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicHeader;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

public class BookController {
	public List<BookInfodto> getBookList(String query, String sort){
		if(query == null || query.length() == 0) {
			return new ArrayList<BookInfodto>();
		}
		final String APP_KEY = "KakaoAK 08f182b46260f0a4422dca98f05fab0f";
		StringBuilder sb = new StringBuilder();
		sb.append("https://dapi.kakao.com");
		sb.append("/v3/search/book");
		sb.append("?query=").append(query)
			.append("&sort=").append(sort);
		
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

}
