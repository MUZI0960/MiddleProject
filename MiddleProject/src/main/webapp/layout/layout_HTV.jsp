<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<script src="<%=request.getContextPath() %>/js/jquery-3.6.3.min.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>


<style>
#layoutFrame{
	margin-top: 0px;
	left :50%;
	position: relative;
	margin-left: -600px;
	width: 1200px;
	display: flex;
	flex-wrap: wrap; 
}
#topField{
	height: 70px;
	width: 1140px;
	margin-left: 60px;
	margin-top: 25px;
}
#viewPage{
	width:1200px;
	height: 2000px;
	padding: 20px;
	overflow: hidden;
}
</style>

</head>
<body>

<% 
	String viewPage = (String) request.getAttribute("viewPage");
%>

<jsp:include page="../layout/Header.jsp"></jsp:include>

<div id="layoutFrame">
	<div id="topField">
		<jsp:include page="../layout/TopField.jsp"></jsp:include>
	</div>
	<div id="viewPage">
		<jsp:include page="<%=viewPage%>"></jsp:include>
	</div>
</div>

</body>
</html>