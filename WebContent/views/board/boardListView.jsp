<%@page import="board.model.vo.Board"%>
<%@page import="board.model.vo.PageInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
ArrayList<Board> bList = (ArrayList<Board>)request.getAttribute("bList");
int boardCount = pageInfo.getBoardCount();
int currentPage = pageInfo.getCurrentPage();
int maxPage = pageInfo.getMaxPage();
int startPage = pageInfo.getStartPage();
int endPage = pageInfo.getEndPage();
int limit = pageInfo.getLimit();
%>
<!DoCTYPE html>
<html lang="ko">
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
        <title>게시판</title>
    </head>
    <body>
        <div class="container content">
            <div class="margin-bottom-30">
	            <div class="col-md-12">
	                <div class="table-responsive">
	                    <table class = "table table-bordered table-striped" style="width:100%;">
	                        <thead>
	                            <tr>
	                                <th style="width:7%;">글번호</th>
	                                <th style="width:45%;">&nbsp;&nbsp;제목</th>
	                                <th style="width:12%;">카테고리</th>
	                                <th style="width:13%;">글쓴이</th>
	                                <th style="width:7%;">조회수</th>
	                                <th style="width:16%;">작성일</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                        
	                        
	                        	<% if(bList.isEmpty()){ %>
	                        	<tr>
	                        		<td colspan="6">등록된 게시글이 없습니다</td>
	                        	</tr>
	                        	<%}else { %>
	                        		<% for(int i = 0; i < bList.size(); i++){ %>
	                        	<tr>
	                        		<td><%=bList.get(i).getBoardNo() %></td>
	                        		<td><%=bList.get(i).getBoardTitle() %></td>
	                        		<td><%=bList.get(i).getCatName() %></td>
	                        		<td><%=bList.get(i).getBoardWriter() %></td>
	                        		<td><%=bList.get(i).getBoardCount() %></td>
	                        		<td><%=bList.get(i).getBoardWriteDate() %></td>
	                        	</tr>
	                        		<%} %>
	                        	<%} %>
	                        </tbody>
	                    </table>
	                </div>
	            </div>
           		<div class = "col-md-12">
					<div class = "text-center">
						<ul class = "pagination">
							<li><a href = "javascript:doPagingClick(1)">처음</a></li>
							<%for(int j = startPage; j <= endPage ; j++){ %>
								<% if(j == currentPage) { %>
									<li class="active"><a><%=j %></a></li>
								<%}else{ %>
									<li><a href = "javascript:doPagingClick('<%=j%>')"><%=j %></a></li>
								<%} %>							
							<%} %>
							<li><a href = "javascript:doPagingClick('<%=maxPage%>')">마지막</a></li>
						</ul>
					</div>
				</div>
            </div>
        </div>
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
	    function doPagingClick(clicknum){
	        location.href = "<%= request.getContextPath() %>/list.bo?currentPage="+clicknum;
	    }
    </script>
    </body>
</html>