<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>forward 액션 태그</h1>

<%
request.setCharacterEncoding("UTF-8");
int i=0;
for(i=0;i<=10;i++){
	out.print(i+"<br>");//<%안에서 html의 태그를 넣을 때는 out.print할 때 묶어서"" 태그내보내기
	//out.println(i+"<br>");//한줄씩 띠어서 br태그가 들어간다.
}


%>
<%--forward 태그를 만나면 page에서 설정한 문서가 포워딩된다.
    (현재 page가 설정한 문서로 변환된다) --%>
<jsp:forward page="forwardResult.jsp">
<jsp:param value="<%=i%>" name="no"/>
<jsp:param value="판교" name="addr"/>
</jsp:forward>
</body>
</html>