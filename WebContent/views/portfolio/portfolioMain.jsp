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
	
 	div {border: 1px solid rgba(255, 0, 0, .0);}
	
	
	/* #wrap {height: 100%; width: 1920px;} */
	#topmenu {height: 54px; width: 100%;}
	#head {height: 162px; width: 100%; padding: 0.8% 0 0.8% 0.5%; font-size: 40px;}
	.content {height: 540px; width:100%;}
	#footer {height: 216px; width:100%; background-color: #088A68;}

	#contentwrap {height: 470px;
				width: 700px;
				margin: 35px 0 35px 200px;
				background-color: rgba(255, 0, 0, .0);
				background-image: url('<%= request.getContextPath() %>/images/portfolio/window.png')}
	.nametag {margin: 32px 0 0 280px;}
	
	.content-1 {height: 20%}
	.content-2 {height: 60%}
	.content-3 {height: 20%}
	
	
		.snip1535 {
	  background-color: #088A68;
	  border: none;
	  color: #ffffff;
	  cursor: pointer;
	  display: inline-block;
	  font-family: 'BenchNine', Arial, sans-serif;
	  font-size: 1em;
	  font-size: 22px;
	  line-height: 1em;
	  margin: 15px 10px;
	  outline: none;
	  padding: 12px 40px 10px;
	  position: relative;
	  text-transform: uppercase;
	  font-weight: 700;
	  width: 200px;
	}
	.snip1535:before,
	.snip1535:after {
	  border-color: transparent;
	  -webkit-transition: all 0.25s;
	  transition: all 0.25s;
	  border-style: solid;
	  border-width: 0;
	  content: "";
	  height: 24px;
	  position: absolute;
	  width: 24px;
	}
	.snip1535:before {
	  border-color: #c47135;
	  border-right-width: 2px;
	  border-top-width: 2px;
	  right: -5px;
	  top: -5px;
	}
	.snip1535:after {
	  border-bottom-width: 2px;
	  border-color: #c47135;
	  border-left-width: 2px;
	  bottom: -5px;
	  left: -5px;
	}
	.snip1535:hover {
	  background-color: #c47135;
	}
	.snip1535:hover:before,
	.snip1535:hover:after,{
	  height: 100%;
	  width: 100%;
	}
	
	
</style>

</head>
<body>
	
	<div id = wrap>
		
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
			
					<div id = contentwrap>
						<div class = content-1>
							<h1 class = nametag><%= nameArr[i] %></h1>						
						</div>
						<div class = content-2>
						
						</div>
						<div class = content-3>
							<button class="snip1535">About</button>
							<button class="snip1535">GitHub</button>
							<button class="snip1535">Contact</button>
						</div>
					</div>
				
				</div>
		<% } %>
		<div id = footer>하단 메뉴</div>
	
	</div>
	
</body>
</html>