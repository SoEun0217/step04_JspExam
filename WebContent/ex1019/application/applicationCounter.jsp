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
	//1. 기존의 count를 구한다.
	application.getAttribute("count");
	//2. 1의결과가 null이라면 count를 저장한다. 초기값 0
	if(application.getAttribute("count")==null){
		application.setAttribute("count", 0);//String으로 넣어주면 캐스팅오류
	}
	//3. 새로운 user인지 아닌지를 판단하고 새로운 user이면 1증가하고
	if(session.isNew()){
		int count=(int)application.getAttribute("count");
		count+=1;
		//다시저장한다.
		application.setAttribute("count",count);
	}

	
%>
<h3>[방문자 수  : <%=application.getAttribute("count") %>명] </h3>


</body>
</html>