<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
h1{background-color: red}</style>
<script type="text/javascript">

alert("시작...");
</script>
</head>
<body>
<h1> JSP 시작하기</h1>
<%
//java 코드영역 자바문법을 100%사용한다.
String name="소은";//지역변수(사용전에 반드시 초기화 필요하다)
int age=24;//지역변수
String addr;//지역변수
//System.out.println("왔다가용 인형졸귀탱~~");//콘솔에 출력

new Date();
new ArrayList();
new FileInputStream("");

%>

<h3> 이름 :  <%=name %><br>
나이 :<%=age %>살 입니다.<p>

메소드 호출 : <%=this.test("배고프다") %>
<%
if(age>18){
	out.println(age+"살은 성인입니다");
}else{
	out.println(age+"살은 미성년자입니다.");//out은 브라우저에 출력하는 메소드
}
%>

<%!
	//메소드 선언 또는 전역변수 선언하는 영역
	public String test(String message){
		System.out.println("test()메소드가 호출되었습니다");//콘솔에 출력
		return "메시지는  "+message;
	
}


%>

</h3>
<body>
</html>