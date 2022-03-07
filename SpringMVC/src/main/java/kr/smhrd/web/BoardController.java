package kr.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.model.BoardVO;

@Controller
public class BoardController {
	
	// 1. 게시판 목록
	@RequestMapping("/boardList.do")
	public String boardList(HttpSession session) {
		System.out.println("게시판 목록");
		BoardVO vo1 = new BoardVO(1,10,"임시 게시글 제목 1","임시 게시글 1","임시 작성자 1","2022-03-07");
		BoardVO vo2 = new BoardVO(2,15,"임시 게시글 제목 2","임시 게시글 2","임시 작성자 2","2022-03-07");
		BoardVO vo3 = new BoardVO(3,3,"임시 게시글 제목 3","임시 게시글 3","임시 작성자 3","2022-03-07");
		BoardVO vo4 = new BoardVO(4,47,"임시 게시글 제목 4","임시 게시글 4","임시 작성자 4","2022-03-07");
		BoardVO vo5 = new BoardVO(5,203,"임시 게시글 제목 5","임시 게시글 5","임시 작성자 5","2022-03-07");
		List<BoardVO> list = new ArrayList<BoardVO>();
		list.add(vo1);
		list.add(vo2);
		list.add(vo3);
		list.add(vo4);
		list.add(vo5);
		session.setAttribute("list",list);
		return "boardList";
	}
	
}
