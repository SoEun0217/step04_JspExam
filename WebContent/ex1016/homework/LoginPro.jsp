<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../../js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){

});
</script>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");//만약에 위에가 EUC-KR이면 여기도ECU-KR이어야함
String id="soeun";
String pwd="1234";
String userId=request.getParameter("userId");
String userPwd=request.getParameter("userPwd");
if(id.equals(userId)&&pwd.equals(userPwd)){
	//세션에 현재 인증된 사용자 정보를 저장한다.
	session.setAttribute("id",userId);//이름맞추기!!!!!
	//session.setAttribute("userPwd",userPwd); 비밀번호는 보안측면때문에 세션에 저장하지 않음
	%>
	<script type="text/javascript">
	top.location.href="index.jsp";//이래야 전체가 바뀔수 있다.(center까지)없으면 안됨
	</script>
	<%

}else{

	%>
	<script>
	alert("정보가 올바르지 않습니다.");
	history.back();//그냥 뒤로 가면 된다. top을 하면 전체 화면이 새로고침되는 느낌
	</script>
	<%
}
%>
</body>
</html>