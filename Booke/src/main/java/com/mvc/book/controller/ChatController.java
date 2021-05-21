package com.mvc.book.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChatController {

    private static final Logger logger = LoggerFactory.getLogger(ChatController.class);

    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/communityMain.do", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        logger.info("Welcome communityMain", locale);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate );

        return "communityMain";
    }

    @RequestMapping(value = "/start", method = RequestMethod.POST, consumes = "application/json")
    @ResponseBody
    public String startApp(@RequestBody String body) {
        System.out.println(body + "  예~~~");
        logger.info(body);
        return "/";
    }

    @RequestMapping(value = "/chatTest.do", method = RequestMethod.GET)
    public String doA(Locale locale, Model model){
        JSONObject cred = new JSONObject();
        JSONObject auth=new JSONObject();
        JSONObject parent=new JSONObject();
        cred.put("username","adm");
        cred.put("password", "pwd");
        auth.put("tenantName", "adm");
        auth.put("passwordCredentials", cred);
        parent.put("auth", auth);

        URLConn conn = new URLConn("http://127.0.0.1",1516);
        List<String> strArr = conn.urlPost(parent);
        model.addAttribute("list",strArr);

        return "chatTest";
    }
}