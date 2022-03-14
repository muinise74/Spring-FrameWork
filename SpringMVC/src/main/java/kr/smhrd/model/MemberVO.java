package kr.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	
	@NonNull
	private String id;
	@NonNull
	private String pw;
	@NonNull
	private String nick;
	@NonNull
	private String tel;
	@NonNull
	private String address;
}
