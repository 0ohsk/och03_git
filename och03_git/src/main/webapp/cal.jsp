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
	request.setCharacterEncoding("utf-8");
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));	
	float num3 = (float)num1/num2;
	int add = num1 + num2;
	int min = num1 - num2;
	int mul = num1 * num2;
	int div = num1 / num2;
	
/* 	out.printf("$d + %d = $d" ,num1,num2, (num1 + num2));
	out.printf("$d - %d = $d" ,num1,num2, (num1 + num2));
	out.printf("$d * %d = $d" ,num1,num2, (num1 + num2));
	out.printf("$d / %d = $f" ,num1,num2,num3); */
	%>
	<!-- Expression(표현식) -->
	덧셈 : <%=add %>
	뺄셈 : <%=min %>
	곱셈 : <%=mul %>
	나눗셈 : <%=div %>
	
	
</body>
</html>