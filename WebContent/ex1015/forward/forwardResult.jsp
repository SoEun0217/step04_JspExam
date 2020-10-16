<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>forwardResult.jsp 문서 입니다.<br>
<%
String no=request.getParameter("no");
String addr=request.getParameter("addr");
%>
숫자 : <%=no %> / 
addr : <%=addr %>
</h3>
</body>
</html>