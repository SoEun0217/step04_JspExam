<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>session 저장된 정보를 확인</h3>
아이디   : <%=session.getAttribute("id") %><br>
취미 : <%= session.getAttribute("hobbys") %><br>
메시지 : <%=session.getAttribute("message") %><br>
<hr>
<h3>application 에 저장된 정보 조회하기</h3>
주소 : <%=application.getAttribute("addr") %>
메시지 : <%=application.getAttribute("message") %>
</body>
</html>