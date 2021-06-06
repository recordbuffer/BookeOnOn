package com.mvc.book.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mvc.book.model.biz.BookStatsBiz;
import com.mvc.book.model.dto.BookStatsDto;

@Controller
public class BookStatsController {
	
private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private BookStatsBiz biz;
	
	
	@RequestMapping(value="/chart/renew.do",method=RequestMethod.POST)
	//@ResponseBody
	public @ResponseBody String renew(@RequestBody String selYear) {
		//selYear = "selYear=2021"
		String[] sYear = selYear.split("=");
		
		String selectedYear = sYear[1];
		//System.out.printf(selectedYear);
		
		String[] cntMonth = {"0","0","0","0","0","0","0","0","0","0","0","0"};
		
	List aaa = biz.selectAllRow(selectedYear);
	String returnVal = "";
	if (aaa.size()>0) {
		for(int i=0;i<aaa.size();i++) {
			HashMap bbb = (HashMap) aaa.get(i);
			cntMonth[Integer.parseInt(bbb.get("MONTH").toString())-1] = bbb.get("CNT").toString();
			}
	}
	
	for (int j=0; j < 12; j++) {
		if (j==0) {
			returnVal = cntMonth[j];
		} else {
			returnVal = returnVal + "," + cntMonth[j];			
		}
	}
	
	//System.out.printf(returnVal);
	return  returnVal;
	}
	
	@RequestMapping(value="/BookStatsList.do", method=RequestMethod.POST)
	@ResponseBody
	public List<BookStatsDto> getBookStatsList(HttpServletRequest request,HttpServletResponse response, BookStatsDto bookStatsDto) throws Exception{
		List<BookStatsDto> BookStatsDtoList = biz.getBookStatsList(bookStatsDto);
		return BookStatsDtoList;
	}
}

