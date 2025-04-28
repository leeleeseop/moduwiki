package com.moduwiki.member.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.moduwiki.member.mapper.MemberMapper;
import com.moduwiki.member.vo.LoginVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
@Qualifier("memberServiceImpl")
public class MemberServiceImpl implements MemberService {

	@Inject MemberMapper mapper;
	
	//로그인
	@Override
	public LoginVO login(LoginVO vo) {
		return mapper.login(vo);
	}
}