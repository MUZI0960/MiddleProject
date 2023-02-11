package kr.or.ddit.controller.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.service.question.IQuestionService;
import kr.or.ddit.service.question.QuestionServiceImpl;
import kr.or.ddit.vo.QuestionVO;

@WebServlet("/qnaList.do")
public class QnAList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		IQuestionService service = QuestionServiceImpl.getInstance();
		
		List<QuestionVO> list = null;
		
		String searchData = request.getParameter("searchData");
		if(searchData==null || searchData.equals("")) {
			list = service.getAllQuestionList();
		}else {
			//조건들어있는 service
		}
		
		request.setAttribute("QuestionList", list);
		request.setAttribute("title","QnA");
		request.setAttribute("viewPage", "/WEB-INF/view/QnA/QnAIndex.jsp");
		
		
		request.getRequestDispatcher("/layout/layout_HTV.jsp").forward(request, response);
	}

}
