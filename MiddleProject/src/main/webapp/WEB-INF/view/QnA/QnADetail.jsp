<%@page import="kr.or.ddit.vo.QuestionVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
	QuestionVO question = (QuestionVO) request.getAttribute("question");
	QuestionVO answer = (QuestionVO) request.getAttribute("answer");
	
	
%>

<%=question.getQ_content()  %>
<%=answer.getAnswer_content() %>