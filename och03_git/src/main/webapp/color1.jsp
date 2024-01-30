<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	//변수선언 꺼내는 방법
	String color = request.getAttribute("color").toString();
%>
<body bcolor="<%=color%>"> <!-- 익스프레션 기법 -->

</body>
</html>