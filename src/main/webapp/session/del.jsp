<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>del 페이지</h1>
	
	<%
		//session.removeAttribute("id"); //하나의 세션 만료(특정 세션 하나만 삭제)
		//session.setMaxInactiveInterval(5); //5초 있다가 모든 세션 삭제
		session.invalidate(); //바로 현재 있는 세션 모두 삭제
	%>
	<hr>
	<a href="set.jsp">set.jsp</a>
	<a href="get.jsp">get.jsp</a>
</body>
</html>