package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.memberService;

@Controller
public class MemberController {

	
	@RequestMapping(value = "/member/insert", method = RequestMethod.GET)
	public String insert() {
		return "member/NewFile";
	
	}
	
	@RequestMapping(value = "/member/insertPro", method = RequestMethod.GET)
	public String insertPro(MemberDTO memberDTO) {
		System.out.println("/member/insertPro");
		
		memberService.insertMember(memberDTO);
		
		return "member/login";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login() {
		return "member/login";	

	}
	@RequestMapping(value = "/member/myInfo", method = RequestMethod.GET)
	public String myInfo() {
		return "member/myInfo";	

	}
	@RequestMapping(value = "/member/myReservation", method = RequestMethod.GET)
	public String myReservation() {
		return "member/myReservation";	

	}
	@RequestMapping(value = "/member/withdrawal", method = RequestMethod.GET)
	public String withdrawal() {
		return "member/withdrawal";	

	}	
	@RequestMapping(value = "/member/find_pass", method = RequestMethod.GET)
	public String find_pass() {
		return "member/find_pass";	

	}
	@RequestMapping(value = "/member/find_Id", method = RequestMethod.GET)
	public String find_id() {
		return "member/find_Id";	

	}







}
