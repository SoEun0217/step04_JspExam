<%@page import="java.net.URLEncoder"%>
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
String userId=request.getParameter("userId");
String userPwd=request.getParameter("userPwd");
String userName=request.getParameter("userName");
//받는 순서 안지켜도된다.
String id="soeun";
String pwd="1234"; 
//(userId.equals(dbId)) 인지 (dbId.equals(userId))
//뒤에것이 선호됨. 앞에것은 nullpointException이 뜰 위험이있다
//입력된 값이 null이라면 비교대상이 무엇이 되던 예외가 날 수 있기 때문에 앞에오는 주체는 null이 아닐 가능성이 있는 것으로
if(userId.equals(id)&&userPwd.equals(pwd)){
	//새로운 request,response를 생성해서 이동하는 방식
	response.sendRedirect("LoginOk.jsp?userName="+URLEncoder.encode(userName,"UTF-8"));
	//get방식으로 넘기는 것인데 왜 인코딩이 안되는가?개념이 response해서 보내는 애를 인코딩하는것이라고 생각하자
	
	//forward방식으로 이동-기존에 있던 request,response를 유지할수있다
	//RequestDispatcher rd=request.getRequestDispatcher("LoginOk.jsp");
	//rd.forward(request, response);
}else{%>

<script type="text/javascript">
alert("<%=userName%>님 정보를 확인해주세요");
//location.href="LoginForm.html";  입력한 값이 다 날라가서 귀찮아짐
history.back();//뒤로 가기 입력한 값이 그대로 남아있음
</script>


<%
	//response.sendRedirect("LoginForm.html");
	/* out.println("<script>");
	out.println("alert('"+userName+"님 정보를 확인해주세요')");
	out.println("</script>"); */
}
%>

</body>
</html>