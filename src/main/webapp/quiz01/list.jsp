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
      if(application.getAttribute("uphit") == null)
         application.setAttribute("uphit", 0); 
    %>
		
	<table border="1">
		<tr>
			<th>제목</th><th>조회수</th>
		</tr>
		<tr>
			<td><a href="view.jsp">안녕하세요</a></td>
			<td> 
				<%--	
					if(application.getAttribute("uphit") == null){
						out.print(0);
					}else{ --%>
				<%= application.getAttribute("uphit") %>
				<%-- } --%>
				
			</td>
		</tr>
	</table>

	
</body>
</html>