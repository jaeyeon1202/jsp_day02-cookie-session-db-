<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>test2.jsp 페이지</h3>
	page : <%= pageContext.getAttribute("name") %><br> <%--죽어 --%>
	request : <%= request.getAttribute("name") %><br> <%--죽어 --%>
	session : <%= session.getAttribute("name") %><br> <%--살아 --%>
	application : <%= application.getAttribute("name") %><br> <%--살아 --%>
	<a href="test3.jsp">test3 설정확인</a>
	<a href="test1.jsp">test1 설정확인</a>
</body>
</html>