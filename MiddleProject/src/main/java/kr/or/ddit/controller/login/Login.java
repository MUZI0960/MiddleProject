package kr.or.ddit.controller.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.service.member.IMemberService;
import kr.or.ddit.service.member.MemberServiceImpl;
import kr.or.ddit.vo.MemberVO;

@WebServlet("/login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		IMemberService service = MemberServiceImpl.getInstance();
		MemberVO vo = service.getMember(id);
		
		PrintWriter out = response.getWriter();
		if(vo!=null && vo.getMem_pass().equals(pwd)) {
			out.print("success");
			HttpSession session = request.getSession();
			session.setAttribute("loginInfo", vo);
		}
	}
}
