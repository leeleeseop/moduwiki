package com.moduwiki.member.vo;

import lombok.Data;

@Data
public class LoginVO {

	// 아이디
	private String Mid;
	
	// 비밀번호
	private String Mpw;
	
	// 이메일
	private String Memail;	
	
	// 사용자 이름
	private String Mname;	
		
	// 등급번호
	private Integer Gno;	
	
	// 등급이름
	private String Gname;
}