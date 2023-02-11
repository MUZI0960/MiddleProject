package kr.or.ddit.dao.member;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.util.SqlMapClientFactory;
import kr.or.ddit.vo.MemberVO;

public class MemberDAOImpl implements IMemberDAO {
	private SqlMapClient smc;
	private static IMemberDAO dao;
	private MemberDAOImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static IMemberDAO getInstance() {
		if(dao==null) dao = new MemberDAOImpl();
		return dao;
	}

	@Override
	public MemberVO getMember(String mem_id) {
		MemberVO vo = null;
		
		try {
			vo = (MemberVO) smc.queryForObject("member.getMember",mem_id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}

}
