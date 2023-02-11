package kr.or.ddit.dao.member;

import kr.or.ddit.vo.MemberVO;

public interface IMemberDAO {

	public MemberVO getMember(String mem_id);
	
}
