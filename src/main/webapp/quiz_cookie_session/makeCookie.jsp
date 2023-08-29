<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>make cookie</h3>
	<%	
		Cookie cookie = new Cookie("quizCookie", "myCookie");
		cookie.setMaxAge(5);
		cookie.setPath("/");
		
		response.addCookie(cookie);
	%>
	<script type="text/javascript">
		window.close()
	</script>
</body>
</html>