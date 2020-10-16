<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디   : <%=session.getAttribute("id") %><br>
취미 : <%= session.getAttribute("hobbys") %><br>
메시지 : <%=session.getAttribute("message") %><br>
</body>
</html>