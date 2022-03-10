package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {
	
	// 1. 게시판 목록
	public List<BoardVO> boardList();
	
	// 2. idx로 게시글 하나 보기
	public BoardVO searchBoardByIdx(int idx);
	
	// 3. 게시글 조회수 1 올리기
	public void updateCntByIdx(int idx);
}
