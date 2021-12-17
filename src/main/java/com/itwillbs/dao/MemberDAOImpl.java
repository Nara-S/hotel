package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;
// 디비 작업하는 역할
@Repository
public class MemberDAOImpl implements MemberDAO{
	
		@Inject
		private SqlSession sqlSession;
		
		//sql구문 들어있는 파일 이름 변수 정의
		private static final String namespace="com.itwillbs.mapper.MemberMapper";

		@Override
		public void insertMember(MemberDTO memberDTO) {
			System.out.println("MemberDAOImpl - insertMember()");
			sqlSession.insert(namespace+".insertMember", memberDTO);
		}

}
