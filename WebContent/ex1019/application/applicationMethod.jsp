<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>ServletContext - application  내장객체 관련메소드</h3>
application.getContextPath() : <%=application.getContextPath() %><br><!-- 프로젝트명이라고생각하면X -->
application.getRealPath("/") : <%=application.getRealPath("/")%><br>
application.getMajorVersion()  : <%=application.getMajorVersion() %><br><!-- dynamic web project버전 -->
application.getMinorVersion() : <%=application.getMinorVersion()%><br>
application.getServerInfo() : <%=application.getServerInfo() %><br><!-- tomcat버전 -->


<h3>application 영역(Scope)에 정보 저장하기</h3>
<%
application.setAttribute("addr", "판교");
application.setAttribute("message", "배고팡");

%>
<h3>application 에 저장된 정보 조회하기</h3>
주소 : <%=application.getAttribute("addr") %>
메시지 : <%=application.getAttribute("message") %>
<a href="../../ex1016/session/sessionGet.jsp">정보 확인하러가자</a>
</body>
</html>