<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//쿠키정보를 가져와서 "saveId"를 찾는다.
Cookie [] cookies=request.getCookies();
String saveId="";//local(지역)변수가 되므로 반드시 초기화해야함
String saveName="";
if(cookies!=null){
	for(Cookie co:cookies){
		if(co.getName().equals("saveId")){
			saveId=co.getValue();
			//반복문빠져나온다.
			
		}if(co.getName().equals("name")){
			saveName=co.getValue();
			
		}
	}
}

%>


<h2> 회원 인증 Page</h2>

<form method="post" action="LoginPro.jsp">
  ID : <input type="text" name="userId" value="<%=saveId%>"/><br/>
  PWD : <input type="password" name="userPwd" /></br/>
  NAME : <input type="text" name="userName" value="<%=saveName%>" /></br/>
  
  <input type="submit" value="로그인" onclick=/>
</form>

</body>
</html>