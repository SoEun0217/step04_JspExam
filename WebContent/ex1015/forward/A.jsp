<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String type=request.getParameter("blood");
String name=request.getParameter("name");
%>

<h1>
<%=request.getParameter("name") %>
<%=name %>님 혈액형은 <%=type%>형 입니다.
성격은 세심합니다.</h1>
</body>
</html>