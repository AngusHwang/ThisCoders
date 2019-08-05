<%@page import="board.model.vo.Board"%>
<%@page import="board.model.vo.PageInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Board b = (Board)request.getAttribute("board");
%>
<!DoCTYPE html>
<html lang="ko">
    <head>
    <meta charset="UTF-8">
        <title>게시글 상세보기</title>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.min.css">
	    <link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/unify/css/style.css?version=20190723">
	    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,700|Open+Sans:400,400i,700,700i|Source+Code+Pro&amp;subset=korean" rel="stylesheet">
	    <link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/connect.css?version=20190723">
	    <link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/result.css?version=20190723">
	    <link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/unify/css/custom.css?version=20190723">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css">
	    <link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/unify/css/theme-colors/blue.css?version=20190723">
	    <link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/pace.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/noty/3.1.4/noty.min.css" />
	    <link type="text/css" rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/bower/redactor/css/redactor.css">
		<link type="text/css" rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/bower/typeahead.js-bootstrap3.less/typeahead.css">
		<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css">
    </head>
    <body>
    	<div class="container content">
			<div class="row">
				<div class="col-md-12">
					<form action="" method="post" class = "form-horizontal" id = "board_write_form">
					<div class="form-group">
						<label class="col-md-2 control-label" for="board_subject">제목</label>
						<div class="col-md-5">
							<input type="text" class="form-control" placeholder="" name="board_subject" value="">
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label" for="board_category">카테고리</label>
						<div class="col-md-2">
							<select id="board_category" name="board_category" onchange="categoryChanged()" class="form-control">
								<option value="2" selected>자유</option>
								<option value="3" >질문</option>
								<option value="6" >오타/오역/요청</option>
								<option value="9" >홍보</option>
								<option value="11" >Beta 문제 수정 요청</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-2 control-label" for="board_content">내용</label>
						<div class="col-md-10">
							<textarea id="board_content" name="board_content" rows="15"  class = "form-control change-to-redactor" style="display:none;"></textarea>
						</div>
					</div>
					<input type="hidden" name="csrf_key" value="ea64f42538a7e57646c0d71b9130351e">
					<div class = "form-group">
						<div class = "col-md-offset-2 col-md-10 ">
							<button type="submit" class="btn btn-primary">글쓰기</button>				
						</div>
					</div>
					</form>
				</div>
			</div>
		</div>
    </body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/noty/3.1.4/noty.min.js"></script>
    <script type="text/x-mathjax-config">
MathJax.Hub.Config({
	showProcessingMessages: false,
	messageStyle: "none",
	extensions: ["tex2jax.js"],
	jax: ["input/TeX", "output/SVG"],
	tex2jax: {
		inlineMath: [ ['$','$'], ["\\(","\\)"] ],
		displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
		processEscapes: true,
		preview: ["수식"],
		ignoreClass: "no-mathjax|redactor-editor",
		processClass: 'mathjax'
	},
	"SVG": { 
		availableFonts: ["TeX", "STIX"], 
		linebreaks: { 
			automatic: true, 
			width: "container" 
		},
		preferredFont: "TeX",
		showMathMenu: false,
		scale: 90,
		undefinedFamily: "'Open Sans', 'Apple SD Gothic Neo', 'Noto Sans CJK KR', 'Noto Sans KR', '나눔바른고딕', '나눔고딕', '맑은고딕', 'Helvetica Neue', 'Helvetica', 'Arial', sans-serif",
	},
	TeX: { equationNumbers: { autoNumber: "AMS" } } ,
});
</script>

    

<script type="text/javascript" src="https://ddo7jzca0m2vt.cloudfront.net/bower/redactor/js/redactor.js"></script>

    
</html>