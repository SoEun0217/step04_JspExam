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
session.invalidate();
//새로고침을하면서 이동해야함 아래방법으로 하면 전체 새로고침을 할 수 없다.
//response.sendRedirect("indexJsp.jsp");

%>
<script type="text/javascript">
top.location.href="index.jsp";//top이 있으면 전체가 새로고침된다.아니면 left만 바뀌게됨
</script>
</body>
</html>