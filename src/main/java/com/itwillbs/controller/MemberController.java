package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.dao.MemberDAOImpl;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.MemberServiceImpl;

@Controller
public class MemberController {

	@Inject
	private MemberService memberService;
	
	//http://localhost:8080/myhotel/member/join
	@RequestMapping(value = "/member/insert", method = RequestMethod.GET)
	public String insert() {
		// /WEB-INF/views/member/join.jsp
		return "member/NewFile";
	}
	
	//http://localhost:8080/myhotel/member/insertPro
	@RequestMapping(value = "/member/insertPro", method = RequestMethod.POST)
	public String insertPro(MemberDTO memberDTO, HttpServletRequest request) { // request에 있는 값을 끄집어내는 방법(수동: HttpServletRequest request)

		System.out.println("/member/insertPro");
		
		memberDTO.setMember_mail(request.getParameter("email1") + "@" +request.getParameter("email2"));
		memberDTO.setMember_birth(request.getParameter("year") + " " + request.getParameter("month") + " " + request.getParameter("day"));
		memberDTO.setMember_address(request.getParameter("address1") + " " + request.getParameter("address2") + " " + request.getParameter("address3"));

		
		System.out.println(memberDTO.getMember_id());
		System.out.println(memberDTO.getMember_pass());
		System.out.println(memberDTO.getMember_name());
		System.out.println(memberDTO.getMember_birth());
		System.out.println(memberDTO.getMember_address());
		System.out.println(memberDTO.getMember_mail());
		System.out.println(memberDTO.getMember_gender());
		System.out.println(memberDTO.getMember_grade());
		System.out.println(memberDTO.getMember_phone());
		

		memberService.insertMember(memberDTO);
		
		// response.sendRedirect() /member/login
		return "redirect:/member/login";
	}
	
	
}