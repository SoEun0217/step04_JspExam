<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
int num1=Integer.parseInt(request.getParameter("num1"));
int result=100/num1;
%>
<h3>
100을 <%=num1 %>으로 나눈 결과는 <%=result%>이다.
</h3>
</body>
</html>