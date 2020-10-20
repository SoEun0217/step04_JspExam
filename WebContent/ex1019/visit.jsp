<%@page import="java.util.Date"%>
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
boolean isCookie=false;//--쿠키존재여부를 판별(false-없음 true-있음) 그냥 쿠키존재여부를 물으면 sessionId가 있기때문에 항상1개
String message="";//출력할 변수
long time=System.currentTimeMillis();//현재시간을 저장할 변수
Cookie timeCo=null;//Cookie저장할 변수
Cookie [] cookies=request.getCookies();
if(cookies!=null){//null여부 언제나확인해 주어야함
	for(Cookie co:cookies){
		if(co.getName().equals("timeCo")){//찾는 쿠키가 존재한다면
			isCookie=true;
			timeCo=co;
			break;//더이상 반복문 돌지않고 원하는 것을 찾으면 빠져 나온다.
		}
	}
}
////////////////////////////////////////
//여기서 상태변수에 따라 처리(원하는 쿠키를 찾았다or 원하는 쿠키가 없다.)
if(!isCookie){//쿠키가없을때 
	//현재시간을 쿠키에 저장
	timeCo=new Cookie("timeCo",""+time);
	timeCo.setPath("/");
	timeCo.setMaxAge(60*60*24);
	response.addCookie(timeCo);

	message="당신은 처음 방문하셨습니다.";
	
}else{//쿠키가있을때
	Date date=new Date(new Long(timeCo.getValue()));//쿠키는 String만 저장하므로 long타입으로 다시 캐스팅해야함
	message="당신의 마지막 접속일은 "+date.toLocaleString();
	//현재 방문한 시점의 시간을 쿠키의 새로운 값으로 설정
	timeCo.setValue(time+"");//현재시간을 다시 쿠키에 저장
	timeCo.setPath("/");
	timeCo.setMaxAge(60*60*24);
	response.addCookie(timeCo);
}
%>
<h1 align="center"><%=message %><br>
현재접속시간 : <%=new Date(time).toLocaleString() %><br>
다시 저장된 시간 : <%=time %></h1>


</body>
</html>