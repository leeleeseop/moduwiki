package com.moduwiki.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.moduwiki.member.service.MemberService;
import com.moduwiki.member.vo.LoginVO;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member")
@Log4j
public class MemberController {

	@Autowired
	@Qualifier("memberServiceImpl")
	private MemberService service;
	
	// 로그인 폼
	@GetMapping("/loginForm.do")
	public String loginForm() {
		log.info("로그인 폼");
		return "member/loginForm";
	}
	
	// 로그인 처리
	@PostMapping("/login.do")
	public String login(LoginVO vo, HttpSession session, RedirectAttributes rttr) {
		
		LoginVO loginVO = service.login(vo);
		
		if(loginVO == null) {
			rttr.addFlashAttribute("로그인 정보가 맞지 않습니다.");
			return "redirect:loginForm.do";
		}
		
		session.setAttribute("login", loginVO);
		rttr.addFlashAttribute("로그인 완료");
		
		return "redirect:/main/main.do";
	}
}