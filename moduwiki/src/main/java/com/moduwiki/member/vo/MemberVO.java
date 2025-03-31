package com.moduwiki.member.vo;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class MemberVO {

	// 회원번호
	private Number Mno;
	
	// 아이디
	private String Mid;
	
	// 비밀번호
	private String Mpw;
	
	// 이메일
	private String Memail;	
	
	// 사용자 이름
	private String Mname;	
	
	// 상태
	private String Mstatus;	
	
	// 가입일
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Data MregDate;	
	
	// 등급번호
	private String Gno;	
}