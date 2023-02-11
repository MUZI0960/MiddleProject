package kr.or.ddit.service.question;

import java.util.List;

import kr.or.ddit.dao.question.IQuestionDAO;
import kr.or.ddit.dao.question.QuestionDAOImpl;
import kr.or.ddit.vo.Q_AnswerVO;
import kr.or.ddit.vo.QuestionVO;

public class QuestionServiceImpl implements IQuestionService {
	private IQuestionDAO dao;
	private static IQuestionService service;
	private QuestionServiceImpl() {
		dao = QuestionDAOImpl.getInstance();
	}
	public static IQuestionService getInstance() {
		if(service==null) service = new QuestionServiceImpl();
		return service;
	}

	@Override
	public List<QuestionVO> getAllQuestionList() {
		return dao.getAllQuestionList();
	}
//	@Override
//	public QuestionVO getQuestionByKey(int q_key) {
//		return dao.getQuestionByKey(q_key);
//	}
//	@Override
//	public Q_AnswerVO getAnswerByKey(int answer_key) {
//		return dao.getAnswerByKey(answer_key);
//	}

}
