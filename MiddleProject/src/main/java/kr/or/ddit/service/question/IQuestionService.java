package kr.or.ddit.service.question;

import java.util.List;

import kr.or.ddit.vo.Q_AnswerVO;
import kr.or.ddit.vo.QuestionVO;

public interface IQuestionService {
	
public List<QuestionVO> getAllQuestionList();
	
//	public QuestionVO getQuestionByKey(int q_key);
//	
//	public Q_AnswerVO getAnswerByKey(int answer_key);


}
