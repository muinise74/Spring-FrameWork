package kr.book.model;

import java.util.ArrayList;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BookMapper {
	
	public ArrayList<BookVO> bookList();

	public void bookInsert(BookVO vo);
	
}
