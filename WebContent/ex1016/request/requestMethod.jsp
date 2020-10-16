<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>request Header 정보 가져오기- 김소은</h1>
<% 
Enumeration<String> names= request.getHeaderNames();
while(names.hasMoreElements()){
	String name=names.nextElement();
	String value=request.getHeader(name);
	%>
	  <h4><%=name %> : <%=value %></h4>		
	<% 
}
%>
<hr>
<h3>
접속자 IP : <%=request.getRemoteAddr() %><br>
getContextPath : <%=request.getContextPath() %><br>
getRealPath : <%=request.getRealPath("/") %><br>
getRequestURL : <%=request.getRequestURL() %><br>
</h3>
</body>
</html>