package kr.or.ddit.controller.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.security.KeyStoreUtil;

import kr.or.ddit.service.question.IQuestionService;
import kr.or.ddit.service.question.QuestionServiceImpl;
import kr.or.ddit.vo.Q_AnswerVO;
import kr.or.ddit.vo.QuestionVO;

@WebServlet("/qnaDetail.do")
public class QnADetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int q_key = Integer.parseInt(request.getParameter("qKey"));
//		
//		IQuestionService service = QuestionServiceImpl.getInstance();
//		
//		QuestionVO question = service.getQuestionByKey(q_key);
//		
//		int answer_key = question.getAnswer_key();
//		
//		Q_AnswerVO answer = service.getAnswerByKey(answer_key);
//		
//		request.setAttribute("question", question);
//		request.setAttribute("answer", answer);
//		request.setAttribute("title", "QnA");
//		request.setAttribute("viewPage", "/WEB-INF/view/QnA/QnADetail.jsp");
//		
		request.getRequestDispatcher("/layout/layout_HTV.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
