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
//폼으로 전송되는 전송방식이 post방식인 경우에는 인코딩설정필요하고
//get방식은 상관없다.

//post방식인 경우에는 인코딩 설정필요
request.setCharacterEncoding("UTF-8");

//전송된 데이터 받기
String type=request.getParameter("blood");
String name=request.getParameter("name");
out.print(type);
out.print(name);
%>

<jsp:forward page='<%=type+".jsp"%>'>

</jsp:forward>
</body>
</html>