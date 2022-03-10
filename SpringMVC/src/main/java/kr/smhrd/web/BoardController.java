package kr.smhrd.web;

import java.util.List;

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
	public String board(Model model, int idx) {
		System.out.println("게시글 하나 보기");
		mapper.updateCntByIdx(idx);
		BoardVO vo = mapper.searchBoardByIdx(idx);
		vo.setContents(vo.getContents().replaceAll("\r\n", "<br/>"));
		model.addAttribute("board", vo);
		return "board";
	}
	
	// 3. 게시글 작성 페이지로 이동
	@RequestMapping("/boardInsertForm.do")
	public String boardInsertForm() {
		System.out.println("게시글 작성 페이지로 이동");
		return "boardInsertForm";
	}
	
	// 4. 게시글 작성하기
	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO vo) {
		System.out.println("게시글 작성");
		mapper.boardInsert(vo);
		return "redirect:/boardList.do";
	}
	
	// 5. 게시글 삭제하기
	@RequestMapping("/boardDelete.do")
	public String boardDelete(int idx) {
		System.out.println("게시글 삭제 하기");
		mapper.boardDeleteByIdx(idx);
		return "redirect:/boardList.do";
	}
	
	// 6. 게시글 수정 페이지로 이동
	@RequestMapping("/boardUpdateForm.do")
	public String boardUpdateForm(Model model, int idx) {
		System.out.println("게시글 수정 페이지로 이동");
		BoardVO vo = mapper.searchBoardByIdx(idx);
		model.addAttribute("board", vo);
		return "boardUpdateForm";
	}
	
	// 7. 게시글 수정 하기
	@RequestMapping("/boardUpdate.do")
	public String boardUpdate(BoardVO vo) {
		System.out.println("게시글 수정 하기");
		mapper.boardUpdate(vo);
		return "redirect:/boardList.do";
	}
	
}
