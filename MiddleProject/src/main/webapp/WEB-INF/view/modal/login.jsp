<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
  
<script>
const Toast = Swal.mixin({
    toast: true,
    position: 'center-center',
    showConfirmButton: false,
    timer: 1000,
    timerProgressBar: false,
    didOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer)
        toast.addEventListener('mouseleave', Swal.resumeTimer)
    }
})

$(function(){
	$('#loginBtn').on('click', function(){
		var id = $('#loginInputId').val();
		var pwd = $('#loginInputPass').val();
		if(id.length==0 || pwd.length==0){
			Toast.fire({
			    icon: 'error',
			    title: '아이디 또는 비밀번호를 입력하세요.'
			})
		}
		$.ajax({
			url : '<%=request.getContextPath()%>/login.do',
			type : 'post',
			data : {"id" : id , "pwd" : pwd},
			success : function(res){
				if(res == "success"){
					location.href="<%=request.getContextPath()%>/index.jsp";
				}else{
					Toast.fire({
					    icon: 'error',
					    title: '아이디 또는 비밀번호를 잘못 입력했습니다.'
					})
				}
			},
			error : function(xhr){
				alert(xhr.status)
			},
			dataType : 'text'
		})
	})
	$('#closeBtn').on('click',function(){
		$('#loginModal').modal('hide')
	})
	
	$('#findID').on('click',function(){
		$('#loginModal').modal('hide');
		$('#findIDModal').modal('show');
	})
})

function goToSignup(){
<%-- 	location.href="<%=request.getContextPath()%>/signup.do"; --%>
}


</script>
	<input type="button" id="closeBtn">
	<label for="closeBtn" class="modalCloseBtn">
		<span></span>
		<span></span>
	</label>
	<div id="loginDorunImg">
		<img alt="두런두런.png" src="<%=request.getContextPath()%>/images/loginDorun.png">
	</div>
	
	<div id="loginInputs">
		<input id="loginInputId" type="text" placeholder=" 아이디를 입력하세요.">
		<input id="loginInputPass" type="password" placeholder=" 비밀번호를 입력하세요.">
		<input id="loginBtn" type="button" value="로그인 하기"><br>
	</div>
	
	<div id="loginAtags">
		<a>ID/PW를 잃어버리셨나요?</a><br>
		<a>아직 회원이 아니신가요?</a><br>
	</div>
	
	<div class="hr-sect">OR</div>
	<div id="kakaoLoginImg" style="text-align: center;">
		<img id="kakaoLoginBtn" alt="카카오로그인.png" src="<%=request.getContextPath() %>/images/kakao_login.png">
	</div>
