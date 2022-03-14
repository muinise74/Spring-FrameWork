package kr.smhrd.model;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {
	
	// 1. 로그인
	public MemberVO loginSelect(MemberVO vo);
	
	// 2. 회원 가입
	public void joinInsert(MemberVO vo);
	
}
