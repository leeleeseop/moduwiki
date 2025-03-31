package com.moduwiki.util.login;

import javax.servlet.http.HttpSession;

import com.moduwiki.member.vo.LoginVO;

public class LoginUtil {
	/**
	 * session에서 아이디를 꺼내는 메서드
	 * 로그인시에는 로그인된 아이디가 비 로그인시에는 null이 리턴
	 */
	public static String getId(HttpSession session) {
		LoginVO login = (LoginVO) session.getAttribute("login");
		String id = null;
		if(login != null) id = login.getMid();
		return id;
	}

}
