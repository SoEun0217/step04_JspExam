<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Cookie - 필요한 정보를 Client PC 쪽에 저장하는 것</h3>
<%
//쿠키를 생성해서 저장한다..	
	Cookie co1=new Cookie("id","jang");
	Cookie co2=new Cookie("age","24");

//옵션 설정
	co1.setMaxAge(60*60*24);//1일을 나타냄(0이면 삭제, -1이면 저장안됨.)
	co2.setMaxAge(60*60*24*365);//365일
	
	co1.setPath("/");//전체경로로 지정됨.
	//co2.setPath("/"); 자기파일의 경로로 들어가있다.같은 폴더내에서만 접근가능

//쿠키를 저장한다.
	response.addCookie(co1);
	response.addCookie(co2);

%>

<a href="cookieGet.jsp">쿠키확인하러가자</a>
</body>
</html>