<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	main.jsp <br>
	<%= session.getAttribute("nick")%>님 환영합니다! <br>
	로그인 성공한 사용자만 접근 가능합니다.
	<hr>
	<a href="logout.jsp">로그아웃</a>
	<a href="login.jsp">로그인 페이지 이동</a>
	
	<% if(session.getAttribute("nick") == null){  %>
			<script type="text/javascript">
				alert("로그인 먼저 해주세요.");
				location.href="login.jsp";
			</script>
	<% } %>
</body>
</html>