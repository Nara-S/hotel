package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.dao.MemberDAOImpl;
import com.itwillbs.domain.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberDTO memberDTO) {
		System.out.println("MemberServiceImpl - insertMember()");
		// insertMember() 메서드 호출
		memberDAO.insertMember(memberDTO);
		
		}

}

