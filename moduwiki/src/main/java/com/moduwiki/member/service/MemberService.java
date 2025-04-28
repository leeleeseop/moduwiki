package com.moduwiki.member.service;

import com.moduwiki.member.vo.LoginVO;

public interface MemberService {

	// 로그인
	public LoginVO login(LoginVO vo);
}