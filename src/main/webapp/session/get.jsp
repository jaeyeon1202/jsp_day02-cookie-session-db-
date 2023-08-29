<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>get.jsp</h1>
	id : <%= session.getAttribute("id") %><br> <%--바로출력 --%>
	<%
		String name = (String)session.getAttribute("name"); //형변환 해주고
	%>
	name : <%= name %><hr> <%--출력 --%>
	<a href="set.jsp">set 이동</a>
	<a href="del.jsp">del 이동</a>
</body>
</html>