package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@Controller
public class MemberController {

	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "/member/insert", method = RequestMethod.GET)
	public String insert() {
		
		return "/member/join";
	}
	
	@RequestMapping(value = "/member/insertPro", method = RequestMethod.POST)
	public String insertPro(MemberDTO memberDTO, HttpServletRequest request) {
		System.out.println("MemberController - insertPro");
		
		memberDTO.setMember_birth(request.getParameter("year") + request.getParameter("month") + request.getParameter("day"));
		memberDTO.setMember_mail(request.getParameter("email1") + "@" + request.getParameter("email2"));
		memberDTO.setMember_address(request.getParameter("address1") + request.getParameter("address2") +request.getParameter("address3"));
		
		//받아온 결과 확인할수있도록 출력
		System.out.println(memberDTO.getMember_id());
		System.out.println(memberDTO.getMember_pass());
		System.out.println(memberDTO.getMember_name());
		System.out.println(memberDTO.getMember_birth());
		System.out.println(memberDTO.getMember_address());
		System.out.println(memberDTO.getMember_phone());
		System.out.println(memberDTO.getMember_mail());
		System.out.println(memberDTO.getMember_gender());
		System.out.println(memberDTO.getMember_grade());
		
		memberService.insertPro(memberDTO);
		
		return "redirect:/member/login";
	}
}