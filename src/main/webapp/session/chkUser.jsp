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
		String DB_id = "1", DB_pwd="1", DB_nick="홍길동"; //DB에서 받아온 정보
	
		String id= request.getParameter("id"); //사용자가 입력한 값
		String pwd = request.getParameter("pwd");
		//select * from member where id=?; //나중에 DB연결하면 이런식으로 씀.
		
		if(id.equals(DB_id) && pwd.equals(DB_pwd)){ //사용자가 입력한것과 DB에 있는것 비교
			session.setAttribute("nick", DB_nick);
			session.setAttribute("login", id);
			response.sendRedirect("main.jsp"); //로그인하면 main으로 보내
		}else{
			response.sendRedirect("login.jsp"); //일치하지 않으면 다시 로그인페이지			
		}
	%>
</body>
</html>