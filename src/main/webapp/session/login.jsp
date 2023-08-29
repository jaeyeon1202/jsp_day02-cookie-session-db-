<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	login.jsp <br>
	<%if(session.getAttribute("nick") ==null){ %>
		<form action="chkUser.jsp" method="post">
			<input type="text" name="id"> <br>
			<input type="text" name="pwd"> <br>
			<input type="submit" value="로그인">
		</form>
	<%}else{%>
	
		<%= session.getAttribute("nick") %>님이미 로그인 하셨습니다.<br>
		<a href="main.jsp">메인 이동</a>
		
	<% } %>
	
</body>
</html>