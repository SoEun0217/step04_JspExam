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

alert("����...");
</script>
</head>
<body>
<h1> JSP �����ϱ�</h1>
<%
//java �ڵ念�� �ڹٹ����� 100%����Ѵ�.
String name="����";//��������(������� �ݵ�� �ʱ�ȭ �ʿ��ϴ�)
int age=24;//��������
String addr;//��������
//System.out.println("�Դٰ��� ����������~~");//�ֿܼ� ���

new Date();
new ArrayList();
new FileInputStream("");

%>

<h3> �̸� :  <%=name %><br>
���� :<%=age %>�� �Դϴ�.<p>

�޼ҵ� ȣ�� : <%=this.test("�������") %>
<%
if(age>18){
	out.println(age+"���� �����Դϴ�");
}else{
	out.println(age+"���� �̼������Դϴ�.");//out�� �������� ����ϴ� �޼ҵ�
}
%>

<%!
	//�޼ҵ� ���� �Ǵ� �������� �����ϴ� ����
	public String test(String message){
		System.out.println("test()�޼ҵ尡 ȣ��Ǿ����ϴ�");//�ֿܼ� ���
		return "�޽�����  "+message;
	
}


%>

</h3>
<body>
</html>