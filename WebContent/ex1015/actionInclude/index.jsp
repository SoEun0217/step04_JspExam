<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="top.jsp"/>


<%

//request로 요청되는 한글 인코딩 처리하기
request.setCharacterEncoding("UTF-8");
String addr="서울시 강남구";

%>
<hr color="red">
<h1>액션태그 include 실습하기</h1>
<h3>여기는 index.jsp 영역입니다....<p>
주소 : <%=addr %>
</h3>

<hr color="red">
<jsp:include page="footer.jsp">
  <jsp:param value="jang" name="id"/>
  <jsp:param value="<%=addr%>" name="addr"/>
</jsp:include>
</body>
</html>