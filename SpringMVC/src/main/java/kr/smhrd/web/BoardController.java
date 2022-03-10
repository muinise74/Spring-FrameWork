package kr.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.BoardMapper;
import kr.smhrd.model.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper mapper;
	
	// 1. 게시판 목록
	@RequestMapping("/boardList.do")
	public String boardList(Model model) {
		System.out.println("게시판 목록");
		List<BoardVO> list = mapper.boardList();
		model.addAttribute("list",list);
		return "boardList";
	}
	
	// 2. 게시글 하나 보기
	@RequestMapping("/board.do")
	public String board(Model model, HttpServletRequest request) {
		System.out.println("게시글 하나 보기");
		int idx = Integer.parseInt(request.getParameter("idx"));
		mapper.updateCntByIdx(idx);
		BoardVO vo = mapper.searchBoardByIdx(idx);
		model.addAttribute("board", vo);
		return "board";
	}
	
}
