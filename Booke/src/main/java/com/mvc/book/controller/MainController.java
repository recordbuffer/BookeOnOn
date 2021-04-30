package com.mvc.book.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

   private static final Logger logger = LoggerFactory.getLogger(MainController.class);

   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Locale locale, Model model) {
      logger.info("Welcome home! The client locale is {}.", locale);

      Date date = new Date();
      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

      String formattedDate = dateFormat.format(date);

      model.addAttribute("serverTime", formattedDate);

      return "home";
   }

   // [���� > ����]
   // ������������ �̵�
   @RequestMapping("/welcome.do")
   public String index() {
      logger.info("WELCOME PAGE");

      return "welcome";
   }

   // ���� �������� �̵�
   @RequestMapping("/main.do")
   public String main() {
      logger.info("MAIN PAGE");

      return "mainpage";
   }

   // [ȸ�� �α���]
   // �α��� �������� �̵�
   @RequestMapping("/loginform.do")
   public String loginForm() {
      logger.info("LOGIN FORM");

      return "loginpage";
   }

   // ȸ������ �������� �̵�
   @RequestMapping("/signup.do")
   public String signupform() {
      logger.info("SIGN UP FORM");

      return "signuppage";
   }

   // ȸ������_���̵� �ߺ� üũ �������� �̵�
   @RequestMapping(value = "/idChk.do")
   public String signup_idChk() {
      logger.info("SIGNUP ID CHECK POP UP");

      return "signuppage_idchk";
   }

   // [���� ������]
   // ����_���� ��ġ �˾�
   @RequestMapping("/detailmap.do")
   public String detailmap() {
      return "detailmap";
   }

   // å �Ұ� �������� �̵�
   @RequestMapping("/bookintro.do")
   public String bookintro() {
      return "bookintro";
   }

   // å �Ұ� ������_�˾� �� ����
   @RequestMapping("/detailpopup.do")
   public String detailpopup() {
      return "detailpopup";
   }
   
   
   // [ ģ�� �˻� ]
   // ģ�� �˻� �������� �̵�
   @RequestMapping("/fsearch.do")
   public String fsearch() {
      logger.info("FRIEND SEARCH PAGE");

      return "fsearchpage";
   }

   // ģ�� �˻� ������ > �˻� ��� �������� �̵�
   @RequestMapping("/fres.do")
   public String fres() {
      logger.info("FRIEND SEARCH RES PAGE");

      return "fsearchpage_res";
   }

   
   //[ ���� ���]
   // ���� ������ 
   @RequestMapping("/msg.do")
   public String msg() {
      return "msg";
   }
   
   
   // [ å �˻� ]
   // å �˻� �������� �̵�
   @RequestMapping("/bsearch.do")
   public String bsearch() {
      return "bsearchpage";
   }

   // å �˻� ��� �������� �̵�
   @RequestMapping("/bres.do")
   public String bres() {
      return "bsearchpage_res";
   }

   // [ ���� ]
   // ���� �������� �̵�
   @RequestMapping("/bcase.do")
   public String bcase() {
      return "bookcase";
   }

   // ���� ������_Ķ������ �̵�
   @RequestMapping("/bcaseCal.do")
   public String bcaseCal() {
      return "bookcase_cal";
   }

   // [����]
   // ���� �������� �̵�
   @RequestMapping("/setting.do")
   public String setting() {
      return "setting";
   }

   // ȸ�� ���� ���� �������� �̵�
   @RequestMapping("/updateform.do")
   public String updateform() {
      logger.info("UPDATE MEMBER INFO PAGE");

      return "updatepage";
   }

   // ȸ�� Ż�� �������� �̵�
   @RequestMapping("/md_aks.do")
   public String mdelete() {
      logger.info("MEMBER DELETE PAGE");

      return "mdeletepage";
   }

   // ȸ�� Ż�� Ȯ�� �������� �̵�
   @RequestMapping(value = "/deleteChk.do")
   public String mdelete_Chk() {
      logger.info("MEMBER DELETE CHECK POP UP");

      return "mdeletepage_Chk";
   }

   // ģ�� ���� �������� �̵�
   @RequestMapping("/friend.do")
   public String friend() {
      logger.info("FRIEND PAGE");

      return "friendpage";
   }

   // ���� ���� �������� �̵�

   
   //[ Ŀ�´�Ƽ ]
   //Ŀ�´�Ƽ �������� �̵�
   @RequestMapping("/communityMain.do")
   public String communityMain() {
      return "communityMain";
   }
   
   //Ŀ�´�Ƽ ä�ù����� �̵�
   @RequestMapping("/communityChat.do")
   public String communityChat() {
      return "communityChat";
   }

}