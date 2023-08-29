<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시글 입니다</h3>
	<br>
	<h5>공지사항 입니다.</h5>
	<br>
	

	<%--
		String cnt = (String)application.getAttribute("uphit");
		out.print(cnt);
		if(cnt == null){
			application.setAttribute("uphit", 1+"");
		}else{
			int c = Integer.parseInt(cnt);
			application.setAttribute("uphit", ++c +"" );
		}
	
	--%>
	<%
		   
      int cnt = (Integer)application.getAttribute("uphit");
      ++cnt;
      application.setAttribute("uphit", cnt);
   %>
	 
	
	
	jsp application을 이용한<br>
	조회수 올리기 문제 입니다.<br>
	<a href="list.jsp">돌아가기</a>
</body>
</html>