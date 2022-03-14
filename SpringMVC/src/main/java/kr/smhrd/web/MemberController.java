package kr.smhrd.web;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.MemberMapper;
import kr.smhrd.model.MemberVO;

@Controller
public class MemberController {
	
	@Inject
	private MemberMapper mapper;
	
	// 1. 로그인 페이지로 이동
	@RequestMapping("/login.do")
	public void login() {
		System.out.println("로그인 페이지");
	}
	
	// 2. 로그인
	@RequestMapping("/loginSelect.do")
	public String loginCon(HttpSession session,MemberVO vo) {
		System.out.println("로그인");
		if (mapper.loginSelect(vo) == null) {
			return "redirect:/login.do";
		}else {
			session.setAttribute("member", mapper.loginSelect(vo));
			return "redirect:/boardList.do";
		}
	}
	
	// 3. 회원가입 페이지로 이동
	@RequestMapping("/join.do")
	public void join() {
		System.out.println("회원가입 페이지");
	}
	
	// 4. 회원 가입
	@RequestMapping("/joinInsert.do")
	public String joinInsert(MemberVO vo) {
		System.out.println("회원가입");
		mapper.joinInsert(vo);
		return "redirect:/login.do";
	}
	
	// 5. 로그 아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		System.out.println("로그 아웃");
		session.invalidate();
		return "redirect:/boardList.do";
	}
}
