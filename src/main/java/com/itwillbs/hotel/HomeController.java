package com.itwillbs.hotel;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		
		
		return "index";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String gotoIndex() {
		
		
		return "index";
	}
	
	@RequestMapping(value = "/sub/rooms", method = RequestMethod.GET)
	public String rooms() {
		
		return "sub/rooms";
	}
	
	@RequestMapping(value = "/sub/facilities", method = RequestMethod.GET)
	public String facilities() {
		
		
		return "sub/facilities";
	}
	
	@RequestMapping(value = "/sub/notice", method = RequestMethod.GET)
	public String notice() {
		
		return "sub/notice";
	}
	
	@RequestMapping(value = "/sub/faq", method = RequestMethod.GET)
	public String faq() {
		
		return "sub/faq";
	}
	
	@RequestMapping(value = "/sub/qna", method = RequestMethod.GET)
	public String qna() {
		
		return "sub/qna";
	}
	
	
	@RequestMapping(value = "/sub/location", method = RequestMethod.GET)
	public String location() {
		
		return "sub/location";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login() {
		
		return "member/login";
	}
	
	
//	@RequestMapping(value = "/member/join", method = RequestMethod.GET)
//	public String join() {
//		
//		return "member/join";
//	}
	
	@RequestMapping(value = "/member/myReservation", method = RequestMethod.GET)
	public String myReservation() {
		
		return "member/myReservation";
	}
	
	@RequestMapping(value = "/admin/adminPage", method = RequestMethod.GET)
	public String adminPage() {
		
		return "admin/adminPage";
	}
	
	@RequestMapping(value = "/sub/room_detail", method = RequestMethod.GET)
	public String room_detail() {
		
		return "sub/room_detail";
	}
	
	@RequestMapping(value = "/sub/reservation", method = RequestMethod.GET)
	public String reservation() {
		
		return "sub/reservation";
	}
}
