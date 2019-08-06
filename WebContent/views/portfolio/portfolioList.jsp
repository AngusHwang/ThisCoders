<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포트폴리오 목록이다 씨발놈들아</title>

<style>
	* {margin: 0px; padding: 0px; box-sizing: border-box;}
	/* html, body {height: 100%; overflow: hidden;} */
	
	
	
	/* #wrap {height: 100%; width: 1920px;} */
	#topmenu {height: 54px; width: 100%;}
	#head {height: 162px; width: 100%; padding: 0.8% 0 0.8% 0.5%; font-size: 40px;}
	.content {height: 540px; width:100%; padding: 35px 0 35px 200px;}
	#footer {height: 216px; width:100%; background-color: #088A68;}

	.contentwrap {height: 470px;
				width: 700px;
				background-color: gray;
				<%-- background-image: url('<%= request.getContextPath() %>/images/portfolio/window.png') --%>
				}
	
	.content-1 {height: 20%}
	.content-2 {height: 60%}
	.content-3 {height: 20%}
	
</style>

</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>
	<div id = topmenu>상단 메뉴</div>
	<div id = head>
		Find Your Partner
		<p style="font-size: 20px">Here are some coders with us. Check their portfolios and contact them.</p>
	</div>
		
	<% String [] nameArr = {"JongIn Hwang" , "ChangHyuk Song", "JunHyuk Park", "SeungHwa Jung"};
		for(int i = 0; i < 4; i++) {
		
		if(i%2 == 0) {%>
			<div class = content style="background-color:#E6E6E6" >
		<% } else { %>
			<div class = content style="background-color:white" >
		<% } %>
		
				<div class = contentwrap>
					<div class = content-1>
						<h1 class = nametag><%= nameArr[i] %></h1>						
					</div>
					<div class = content-2>
					
					</div>
					<div class = content-3>
						<button>About</button>
						<button>GitHub</button>
						<button>Contact</button>
					</div>
				</div>
			
			</div>
	<% } %>
	<div id = footer>하단 메뉴</div>
	
</body>
</html>