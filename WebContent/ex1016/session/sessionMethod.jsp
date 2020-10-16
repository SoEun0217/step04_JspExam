<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>
HttpSession - session 메소드 
</h1>
<h3>
//세션유효시간 30초 설정
<% session.setMaxInactiveInterval(30); %>
sesseion.getID()= <%=session.getId() %><br>
sesseion.isNew()= <%=session.isNew() %><br>
sesseion.getMaxInactiveInterval()= <%=session.getMaxInactiveInterval() %><br>
sesseion.getCreationTime()= <%=session.getCreationTime() %><br>
sesseion.getLastAccessedTime()= <%=session.getLastAccessedTime() %><br>

<hr>
<h3>세션의 정보를 저장하기</h3>
<%
session.setAttribute("id", "jang");
session.setAttribute("hobbys", new String[]{"등산","운동"});
session.setAttribute("message", "session재미있다...!");
%>

<h3>저장된 정보를 확인</h3>
아이디   : <%=session.getAttribute("id") %><br>
취미 : <%= session.getAttribute("hobbys") %><br>
메시지 : <%=session.getAttribute("message") %><br>
<a href="sessionGet.jsp">session정보 보러가자</a>
</h3>
</body>
</html>