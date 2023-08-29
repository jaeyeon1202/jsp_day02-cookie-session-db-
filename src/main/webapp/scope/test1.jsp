<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	test.jsp<br>
	- scope : 설정 값이 유지되는 범위 <br>
	page : 현재페이지까지만 유지된다<br>
	request : 현재 페이지 또는 다음 페이지까지 유지됨<br>
			- 단, 다음페이지까지 유지시키려면 forward를 이용해야 한다<br>
	session : 웹 브라우저가 살아있는 동안 유지된다<br>
	application : 서버가 살아있는 동안 유지된다 <hr>
	<%
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
		
		//request.getRequestDispatcher("test2.jsp").forward(request, response);
		//포워드를 이용해서 리퀘스트값을 같이 전달..?
		//test1 dycjd //-> test2로 바로 전달
		//리퀘스트 값을 가지고 바로 test2로 간다?
		//리퀘랑 세션을 가장 많이 씀.
		
	%>
	page : <%= pageContext.getAttribute("name") %><br> <%--살아 --%>
	request : <%= request.getAttribute("name") %><br> <%--살아 --%>
	session : <%= session.getAttribute("name") %><br> <%--살아 --%>
	application : <%= application.getAttribute("name") %><br> <%--살아 --%>
	<a href="test2.jsp">test2 설정확인</a>
</body>
</html>