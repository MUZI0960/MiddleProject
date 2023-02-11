package kr.or.ddit.dao.question;

import java.util.List;

import kr.or.ddit.vo.Q_AnswerVO;
import kr.or.ddit.vo.QuestionVO;

public interface IQuestionDAO {
	
	public List<QuestionVO> getAllQuestionList();
	
//	public QuestionVO getQuestionByKey(int q_key);
//	
//	public Q_AnswerVO getAnswerByKey(int answer_key);
}
