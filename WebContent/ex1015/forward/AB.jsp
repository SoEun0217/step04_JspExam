<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String type=request.getParameter("blood");
String name=request.getParameter("name");
%>

<h1><%=name %>님 혈액형은 <%=type%>형 입니다.
발상이 뛰어납니다.</h1>
</body>
</html>