<%@page import="kr.or.ddit.vo.QuestionVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%
	List<QuestionVO> list = (List<QuestionVO>) request.getAttribute("QuestionList");
%>

<script type="text/javascript">

function QnADetail(target){
	var key = ($(target).find('td').eq(0).html());
<%-- 	location.href="<%=request.getContextPath()%>/qnaDetail.do?qKey="+key; --%>
}
</script>

<table border=1>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>답변여부</th>
		<th>작성자</th>
		<th>작성일자</th>
		<th>조회수</th>
	</tr>
	
<%if(list==null){%>
	<tr>
		<td colspan="6">등록된 질문이 없습니다.</td>	
	</tr>	
<%}else{
	for(int i=0;i<list.size();i++){
		QuestionVO vo = list.get(i);%>
	<tr class="link" onclick="QnADetail(this)">
		<td><%=vo.getQ_key() %></td>
		<td><%=vo.getQ_title() %></td>
		<td><%if(vo.getAnswer_key()!=0){%>
			[답변완료]
		<%} %>
		</td>
		<td><%=vo.getMem_nick() %></td>
		<td><%=vo.getQ_date() %></td>
		<td><%=vo.getQ_view() %></td>
	</tr>
<%}} %>
</table>
	
