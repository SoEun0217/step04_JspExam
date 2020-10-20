<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
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
//왜 예외처리를 안해도되는가????
//만들어지는 Servlet 파일을 확인해보면 jspService메소드에 이미 try블럭으로 들어가있어서 예외처리가 되어있다.
//폴더는 직접생성해주어야한다.
long time=System.currentTimeMillis();
String name=request.getParameter("name");
String subject=request.getParameter("subject");
String content=request.getParameter("content");
String realPath=application.getRealPath("/ex1019/save/");
String path=realPath+"/"+name+"_"+time+".txt";

BufferedWriter bw=new BufferedWriter(new FileWriter(path));
bw.write("작성 : "+name+"\n");
bw.write("제목 : "+subject+"\n");
bw.write("내용 : "+content+"\n");

bw.flush();
bw.close();
//application영역에 realPath저장
application.setAttribute("realPath", realPath);
out.print("<script>alert('생성되었습니다.');");
out.print("location.href='FileReader.jsp';");
out.print("</script>");
%>




</body>
</html>