<%@page import="member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Member loginUser = (Member)session.getAttribute("loginUser");
	String msg = (String)request.getAttribute("msg");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 /* ---------------------- 내용 ----------------------------------------- */
	#content{
		width: 65%;
		height: 70%;
		float: left;
	}
            
            
	#content-1{
		width: 100%;
		height: 20%;
		float: left;
		position: relative;
            }

            #content-1 img{
                width: 100%;
                height: 60%;
                vertical-align: middle;
            }
            
            #logo-text{
                float: left;
                position: absolute;
                text-align: center;
                top: 30%;
                left: 40%;
                font-size: 50px;
            }
            
            #content-2{
                width: 100%;
                height: 80%;
                float: left;
               
            }
            
            
	#login-section {
		font-family: 나눔바른펜;
		font-size: 12pt;
		margin: 100px;
	}
	
	#login_form { /* legend에 대한 스타일*/
		font-size: 30px;
		font-weight: bolder;
		color: #2a282b;
	}
	
	fieldset { /*fiedset의 선 스타일*/
		border: 3px solid #666666;
		border-radius: 25px;
		padding: 80px 10px 0px 10px;
		width: 500px;
		height: 350px;
		margin: auto;
	}
	
	#login_area * {
		height: 35px;
		width: 250px;
		padding-left: 15px;
		margin-right: 5px;
	}
	
	#login_area button {
		width: 270px;
		height: 35px;
		background-color: indianred;
		outline: none;
		border: 0px;
		color: white;
		padding: 0px;
	}
	
	#error_msg{  
		color: red;
		font-size: 13px;
	}
	
	.find_info>a {
		text-decoration: none;
		color: #666666;
		font-size: 12px;
		margin: auto;
	}
	
	.find_info>a:hover {
		color: rgb(70, 221, 176);
	}
	
	/* ------------------------------------ aside --------------------------------------------- */
	#aside-menu2{
		width: 15%;
		height: 70%;
		float: left;
	}
</style>
</head>
<body>
 <!-- -------------------------------------------- 사이드 메뉴 ------------------------------------------------------ -->
	<nav id="side-menu">
		<div id="menu-bar" >
			<div id="title-menu">로그인</div>
       <!-- <ul>
            	<li><a href="#">메뉴1</a></li>
                <li><a href="#">메뉴2</a></li>
                <li><a href="#">메뉴3</a></li>
                <li><a href="#">메뉴4</a></li>
           	</ul>       서브메뉴 사용시 활성화-->
        </div>
    </nav>
    
  <!----------------------------------------------- content ------------------------------------------------------------->
    <section id="content">
		<div id="content-1">
			<img src="img/화면.jpg">
			<div id="logo-text">
				<!-- <p>로그인</p> -->
            </div>
        </div>
        <br>
    
		<section id="content-2">

			<%--<% if (loginUser == null){  로그인이 안되어있을 때--%> 
			<div id="login-section">
				<form method="post" id="login_wrap" action="../../login.me"> <!-- 나중에 action 추가하기 -->
					<fieldset>
					<legend id="login_form" align="center">로그인</legend>
					<div id="login_area" align="center">
					
		             	<input type="text" id="userId" name="userId" placeholder="아이디 입력" maxlength="40">
		            	<div class="error" id="error_id"></div> <!-- 아이디 입력 오류시  문자열 출력-->
		            
						<input type="password" id="userPwd" name="userPwd" placeholder="비밀번호 입력" maxlength="40">
		     			<div class="error" id="error_pwd">
		     			<%if(msg!=null){ %>
		     				<span id="error_msg"><%=msg%></span>
		     			<%} %> 
		     			</div><!-- 비번 입력 오류시  문자열 출력-->
		
							<button>로그인</button>
		            </div>
		
		            <!-- <span class="login_check_box">
		            		<input type="checkbox" id="login_chk" name="nvlong" class=""  value="off" onchange="savedLong(this);nclks_chk('login_chk', 'log.keepon', 'log.keepoff',this,event)" />
		            		<label for="login_chk" id="label_login_chk" class="sp ">로그인 상태 유지</label>
		                </span> -->
		           	<br>
		            <div class="find_info"  align="center">
		            	<a target="_blank" id="find_user" href="#">아이디/비밀번호 찾기</a>
		                &nbsp; | &nbsp;
		          		<a target="_blank" id="join" href="#" >회원가입</a>
		           	</div>
		           	</fieldset>
		     	</form>
				<%-- <% }else{ %> --%>
					<!-- 로그인 성공시 메인으로 이동 -->
				<%-- <% } %> --%>
			</div>
		            
		</section>
	</section>
  <!------------------------------------------------ aside(오른쪽 메뉴 / 광고) ---------------------------------------------->
    <aside id="side-menu2"></aside>




	<script>
		$("#login_wrap").submit(function() {
			
			$("#userId").on("input", function () {
				if ($("#userId").val().trim().length == 0) {
					$("#error_id").text("아이디 입력하세요.").css({"color" : "red", "font-size" : "15px"});
					// 아이디 input 창 아래 "아이디 입력하세요 "출력
					// 후 아이디input창으로 커서 이동
					return false;
				}
			});
			
			$("#userPwd").on("input", function () { // 비번입력 창에 값입력 시 

				if ($("#userPwd").val().trim().length == 0) {
					$("#error_pwd").text("비밀번호를 입력하세요.").css({"color" : "red", "font-size" : "15px"}); // 비번 input 창 아래 "비번 입력하세요." 출력
					// 비번 input 창 아래 "비번 입력하세요." 출력
					// 후 비번input창으로 커서 이동
					return false;
				}
			});

			return true; // LoginServlet으로 넘어가기
			
		});
	</script>

</body>
</html>