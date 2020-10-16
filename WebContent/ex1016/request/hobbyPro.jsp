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
request.setCharacterEncoding("UTF-8");
String name=request.getParameter("name");
String age=request.getParameter("age");
String hobby [] = request.getParameterValues("hobby"); 
int i=0;
String hobbyV="";
for(i=0;i<hobby.length;i++){
	hobbyV+=hobby[i]+" . ";
}

%>
<h3>
이름 : <%=name %> 선생님방법 : <%=request.getParameter("name") %><br>
나이 : <%=age %>  선생님방법 : <%=request.getParameter("age") %><br>
취미 : <%=hobbyV %> 선생님방법 : <%=request.getParameter("hobby") %><br>
취미 : 
<%
	//하나의 이름으로 값이 여러개 전송되는 경우
	String hobbys [] = request.getParameterValues("hobby"); 
	for (String each:hobbys){
		out.print(each+" , ");
	}

%>
</h3>
</body>
</html>