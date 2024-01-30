<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
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
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	//Current Date
	Date date = new Date();
	//--------------파일저장-------------------
	long fileName = date.getTime();
	//getRealPath --> Tomcat Metadata File 저장
	String real = application.getRealPath("/WEB-INF/out/"+fileName+".txt");
	System.out.println(real);
	//File 저장할 수 있는 객체
	FileWriter fw = new FileWriter(real);
	//File 내용
	String mag = "제목 : " + title + "\r\n";
	mag += "작성자 : " + writer + "\r\n";
	mag += "내용 : " + content + "\r\n";
	fw.write(mag);
	fw.close();
	
	//--------------화면출력-------------------스크립트로 하는 방법
	out.println("제목1 : " + title + "<br>");
	out.println("작성자1 : " + writer + "<br>");
	// out.println("작성팀1 : " + date + "<br>");
	out.println("내용1 : " + content + "<br>");

%>
<!--  화면출력 자바로 하는 방법  -->
제목2 : <%=title %><br>
작성자 : <%=writer %><br>
내용 : <%=content %><br>

</body>
</html>