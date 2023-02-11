package kr.or.ddit.dao.question;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.util.SqlMapClientFactory;
import kr.or.ddit.vo.Q_AnswerVO;
import kr.or.ddit.vo.QuestionVO;

public class QuestionDAOImpl implements IQuestionDAO {
	private SqlMapClient smc;
	private static IQuestionDAO dao;
	private QuestionDAOImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	public static IQuestionDAO getInstance() {
		if(dao==null) dao = new QuestionDAOImpl();
		return dao;
	}
	@Override
	public List<QuestionVO> getAllQuestionList() {
		List<QuestionVO> list = null;
		
		try {
			list = (List<QuestionVO>) smc.queryForList("question.getAllQuestionList");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
//	@Override
//	public QuestionVO getQuestionByKey(int q_key) {
//		QuestionVO vo = null;
//		try {
//			vo= (QuestionVO) smc.queryForObject("question.getQuestionByKey",q_key);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return vo;
//	}
//	
//	@Override
//	public Q_AnswerVO getAnswerByKey(int answer_key) {
//		Q_AnswerVO vo = null;
//		try {
//			vo=(Q_AnswerVO) smc.queryForObject("question.getAnswerByKey",answer_key);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return vo;
//	}
//	

}
