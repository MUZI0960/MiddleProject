package kr.or.ddit.service.member;

import kr.or.ddit.dao.member.IMemberDAO;
import kr.or.ddit.dao.member.MemberDAOImpl;
import kr.or.ddit.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {
	private IMemberDAO dao;
	private static IMemberService service;
	private MemberServiceImpl() {
		dao = MemberDAOImpl.getInstance();
	}
	public static IMemberService getInstance() {
		if(service==null)service = new MemberServiceImpl();
		return service;
	}
	
	
	@Override
	public MemberVO getMember(String mem_id) {
		return dao.getMember(mem_id);
	}

}
