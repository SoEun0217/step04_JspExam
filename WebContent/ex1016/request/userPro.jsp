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
<h1>가입된 정보</h1>
<%
	request.setCharacterEncoding("UTF-8");
	//전송된 모든 name의 정보 가져오기
	Enumeration<String> e=request.getParameterNames();
	 while(e.hasMoreElements()){//요소가 더 있다면..
		 String name=e.nextElement();
		String value=request.getParameter(name);
	 	out.println(name+" : "+value+"<br>");
	 }


%>
<h3>

</h3>

</body>
</html>