<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "member.model.vo.Member" %>
<%
	// session 객체에 담겨진 loginUser 객체
	Member loginUser = (Member)session.getAttribute("loginUser");
	
	
	// 회원가입 성공시 메세지 출력
	String msg = (String)session.getAttribute("msg");

%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
div {
	margin: 0;
	padding: 0;
	/* border: 1px solid gray; */
	box-sizing: border-box;
}


#header-top {
	margin-left: auto;
	margin-right: auto;
	width: 1100px;
	height: 115px;
	align-self: center;
}

#header-top-menu {
	width: 100px;
	height: 30px;
	float: right;
	text-align: center;
}

#header-top-menu a {
	font-size: 8pt;
	font-family: 나눔바른펜;
	text-decoration: underline;
	color: #666666;
}

#header-bottom-menu {
	width: 1100px;
	height: 85px;
	float: left;
}

#menu-bar {
	width: 900px;
	height: 100%;
	float: right;
	list-style: none;
}

#menu {
	width: 140px;
	height: 100%;
	float: right;
	text-align: center;
	padding-top: 40px;
}

#menu a {
	font-family: 나눔바른펜;
	font-size: 12pt;
	font-weight: bold;
	text-decoration: none;
	color: #2a282b;
}

#menu a:hover {
	color: slateblue;
}

ul {
	display: block;
	/* list-style-type: disc; */
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

#bottom-menubar {
	text-indent: -5px;
}
</style>
<title>상단 메뉴바</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<header>
		<div id="header-top">
			<div id="header-top-menu">
				<a href="#">로그인</a> <a href="#">회원가입</a>
			</div>

			<div id="header-bottom-menu">

				<div id="main-logo" style="float: left; width: 200px; height: 100%;">
					<img src="../../images/menubar/logo.png" width="100%" height="100%">
				</div>

				<div id="menu-bar">
					<div id="menu">
						<a href="#">this.coders</a>
					</div>
					<div id="menu">
						<a href="#">마이페이지</a>
					</div>
					<div id="menu">
						<a href="#">이용방법</a>
					</div>
					<div id="menu">
						<a href="#">알고리즘</a>
					</div>
					<div id="menu">
						<a href="#">게시판</a>
					</div>
					<div id="menu">
						<a href="#">프로젝트</a>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>
</html>