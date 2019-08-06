<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/unify/css/style.css?version=20190723">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,700|Open+Sans:400,400i,700,700i|Source+Code+Pro&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/connect.css?version=20190723">
<link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/result.css?version=20190723">
<link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/unify/css/custom.css?version=20190723">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.css">
<link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/unify/css/theme-colors/blue.css?version=20190723">
<link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/pace.css">
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-10874097-3"></script>
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.8.7/chosen.min.css">
<link type="text/css" rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/bower/redactor/css/redactor.css">
<link rel="stylesheet" href="https://ddo7jzca0m2vt.cloudfront.net/css/board.css">
<title>게시글 상세보기</title>
</head>
<body>
   	<%@ include file="../common/menubar.jsp" %>
   	<div class="margin-bottom-60"></div>
   		<div class="container content">
   			<div class="col-md-12">
   				<div class="page-header">
	   				<h3>제목</h3>
   				</div>
   			</div>
   			<a id="post" class="comment-link"></a>
   			<div class = "col-md-12 comment">
   				<div class="panel panel-default">
   					<div class="panel-heading">
   						<h4 class="panel-title"><a href="/user/donghp">닉네임</a>&nbsp;&nbsp;&nbsp;
   						<a href = "#post" rel="tooltip" data-placement="top" title="2019년 8월 4일 14시 18분 39초" class = "tooltip-click real-time-update" data-timestamp="1564895919" data-method="from-now">1일 전</a>
   						<span class = "like-box" style="display:none;">&nbsp;&nbsp;&nbsp;
   							<span class = "glyphicon glyphicon-thumbs-up"></span>&nbsp;
   							<span class="like-count">0</span>
   						</span>
  						<div class = "pull-right">
   							<span class= "post_like" >조회수 111</span>
   						</div>
						</h4>
					</div>
   								
 					<div class="panel-body">
 						<div class = "content post" style="line-height:30px;">
   									<!-- 내용 삽입부분  -->
   						</div>
   						<div class="source CodeMirror-readonly">
   							<textarea class="form-control no-mathjax codemirror-textarea" data-mime="text/x-c++src" data-wrap="true" readonly style="resize : none; cursor: initial;">
	   						</textarea>
   						</div>
   					</div>
   				</div>
   			</div>
   			<div class = "col-md-12">
   				<div class = "text-center">
   					<button type="button" class="btn btn-primary btn-lg" id="write_comment_button">댓글 쓰기</button>
  				</div>
  			</div>
   		</div>
	<div class="margin-bottom-60"></div>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>