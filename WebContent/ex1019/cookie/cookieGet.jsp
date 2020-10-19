<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>저장된 Cookie 정보 확인</h3>
<h4>
<%
//저장된 정보 꺼내기

Cookie [] co =request.getCookies();
//처음에 request.getCookies()가 왜 2개야?3개가아니라?
//jsession은 response까지 일어난 다음에 일어난다. 그러므로 처음에 request로 들어가는 쿠키는 2개


if(co==null){
	out.println("쿠키 정보가 없습니다.");
}else{
	out.print("cookies.length  = "+co.length+"<p>");
	for(Cookie cookie:co){
		String name=cookie.getName();
		String value=cookie.getValue();
		out.println("name : "+name+" value : "+value+"<br>");
	}
}

%>
</h4>
</body>
</html>