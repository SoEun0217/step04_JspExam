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
//param으로 전송된 데이터 받기
String id=request.getParameter("id");
String addr=request.getParameter("addr");//리턴값이 무조건 스트링이다.
%>
<h3>footer.jsp입니다..<p>
아이디 : <%=id %>
주소  : <%=addr %> 
</h3>
</body>
</html>