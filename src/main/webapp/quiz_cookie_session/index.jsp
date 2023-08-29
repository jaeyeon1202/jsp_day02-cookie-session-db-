<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>기본페이지</h3>
	<% 
	boolean bool =true;
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c: cookieArr){
				out.print("name:"+c.getName()+"<br>");
				out.print("value:"+c.getValue()+"<br>");
				if(c.getName().equals("quizCookie")){
					bool = false;
				}
			}
		}
		%>
		<% if(bool){ %>
		<script type="text/javascript">
			window.open("popup.jsp","",
					"width=300, height=200, top=500, left=500");
		</script>
	<%} %>

	
</body>
</html>