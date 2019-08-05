<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
   <h1>메인페이지</h1>
   <hr>
   <form action="<%= request.getContextPath() %>/temp.do" method="GET" name="frm" id="frm">
   <button onclick="doPagingClick()">게시판 이동하기</a></button>
   </form>
    <script>
       function doPagingClick(){
          document.frm.action = "<%= request.getContextPath() %>/list.bo?currentPage=1";
          document.frm.submit();
       }
       
    </script>
</body>
</html>