<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String title = (String) request.getAttribute("title");
%>
<style>
#topFieldPTag{
	font-weight: bold;
	font-size: 40px;
	padding: 10px 50px 20px 20px;
	margin :0;
	display: flex;
}
</style>
    
<p id="topFieldPTag" ><%=title %></p>