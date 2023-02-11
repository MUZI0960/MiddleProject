<%@page import="kr.or.ddit.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <% MemberVO loginInfo = (MemberVO) request.getSession().getAttribute("loginInfo");%>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/Header.css">

<!-- 모달 -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<!---------> 

<style>
	.modal-content{
		border : none;
		padding : 30px;
	}
	input:focus {	
	 outline-color: #CCD6A6;
	}
	.link{
		cursor: pointer;
	}
</style>

<script>
function headController(value){
	
	switch(value){
	// 메인 이동 
	case 0: location.href="<%=request.getContextPath()%>/index.jsp"; break; 
	
	// 로그아웃 후 메인으로 이동
<%-- 	case 1: location.href="<%=request.getContextPath()%>/logout.do"; break; --%>
	
	// 중고거래 이동 
<%-- 	case 2: location.href="<%=request.getContextPath()%>/"; break;  --%>

	// 우리동네게시판 이동 
<%-- 	case 3: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>

	// QnA 이동 
	case 4: location.href="<%=request.getContextPath()%>/qnaList.do"; break; 

	// 공지사항 이동 
<%-- 	case 5: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>

	// 중고거래로 이동 (searchInput 값 get방식으로 전송 후 검색 결과 나오게 )
<%-- 	case 6: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>

	// 회원가입 이동 
<%-- 	case 7: location.href="<%=request.getContextPath()%>/signup.do"; break;  --%>

	// 프로필 수정 이동 
<%-- 	case 8: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>

	// 회원 정보 수정 이동 
<%-- 	case 9: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>

	// 판매상품목록 이동 
<%-- 	case 10: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>

	// 구매상품목록 이동 
<%-- 	case 11: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>

	// 관심상품목록 이동 
<%-- 	case 12: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>

	// 내가 쓴 게시물목록 이동 
<%-- 	case 13: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>

	// 내가 쓴 댓글 목록 이동 
<%-- 	case 14: location.href="<%=request.getContextPath()%>/index.jsp"; break;  --%>
	
	
	}
}
</script>  
 <div id="navDiv">
<nav>
	<img id="dorunTitleImage" alt="두런두런.png" src="<%=request.getContextPath() %>/images/dorun.png" onclick="headController(0)">
	<ul>
		<li class="link" onclick="headController(2)">중고거래</li>
		<li class="link" onclick="headController(3)">우리동네게시판 </li>
		<li class="link" onclick="headController(4)">QnA</li>
		<li class="link" onclick="headController(5)">공지사항 </li>
		
		<li id="searchLi">
		<input id="searchInput" placeholder="물품이나 동네를 검색해보아요 ">
		<img id="searchIconImg" alt="glass-search.png" src="<%=request.getContextPath() %>/images/glass-search.png" onclick="headController(6)">
		</li>
		<li>
		<%if(loginInfo==null || loginInfo.equals("")){ %>
		<p class="HeaderLoginBtn" data-toggle="modal" data-target="#loginModal">로그인</p>
		<%}else{ %>
		<p class="HeaderLoginBtn" onclick="headController(1)">로그아웃</p>	
		<%} %>
		</li>
		
		<li id="sidebar_menuicon">
		<input type="checkbox" id="menuicon">
		<label for="menuicon">
			<span></span>
			<span></span>
			<span></span>
		</label>
		<div class="sidebar">
			<p id="mypage">마이페이지</p>
			<hr>
			
			<!-- 비회원 -->
			<%if(loginInfo==null){%>
			
			<div id="profile">
				<img id="profile_img" alt="기본이미지.png" src="<%=request.getContextPath()%>>/images/profile_default_image.jpg">
				<div id="img_badge">
					<span id="nickName">로그인이 필요합니다</span><br>
				</div>
			</div>

			<div id="slide_menu">
				<div class="slide_menu_title">
					<p>회원가입</p>
				</div>

				<div id="slide_p1">
					<p onclick="headController(7)">회원가입</p>
					<p data-toggle="modal" data-target="#loginModal">로그인</p>
				</div>
				<div class="slide_menu_title">
					<p>공지사항</p>
				</div>
				<div id="slide_p2">
					<p onclick="changeView(5)">공지사항</p>
					<p onclick="changeView(4)">QnA</p>
				</div>		
			</div>
			
			<%}else{%>
			
			<div id="profile">
				<%if(loginInfo.getMem_img()==null) {%>
					<img id="profile_img" alt="기본이미지.png" src="<%=request.getContextPath() %>/images/profile_default_image.jpg">
				<%}else {%>
					<img id="profile_img" alt="회원이미지.png" src="">
				<%} %>
				<div id="img_badge">
					<span id="mem_nick">
						
					</span><br>
					<span id="mem_money">
					
					</span>
					<div id="badge_div">
					<!-- 뱃지 이미지 위치 -->	
					</div>
				</div>
			</div>
		
			<div id="slide_menu">
				<div  class="slide_menu_title">
					<p>계정 / 정보관리</p>
				</div>
		
				<div id="slide_p1">
					<p onclick="headController(8)">프로필수정</p>
					<p onclick="headController(9)">회원정보수정</p>
				</div>
				<div  class="slide_menu_title">
					<p>활동관리</p>
				</div>
				<div id="slide_p2">
					<p onclick="changeView(10)">판매상품</p>
					<p onclick="changeView(11)">구매상품</p>
					<p onclick="changeView(12)">관심상품</p>
					<p onclick="changeView(13)">나의게시물</p>
					<p onclick="changeView(14)">나의댓글</p>
				</div>
			</div>
			<%}%>
		<hr>
	</div>
		
		</li>
	</ul>
</nav>
</div>

<div class="modal fade" id="loginModal">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-body">
					<jsp:include page="/WEB-INF/view/modal/login.jsp"></jsp:include>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="modal fade" id="findIDModal">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-body">
<%-- 					<jsp:include page="/WEB-INF/view/modal/findID.jsp"></jsp:include> --%>
				</div>
			</div>
		</div>
	</div>
    
    