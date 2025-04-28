package com.moduwiki.member.mapper;

import org.springframework.stereotype.Repository;

import com.moduwiki.member.vo.LoginVO;

@Repository
public interface MemberMapper {

	// 로그인
	public LoginVO login(LoginVO vo);
}