<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
		request.setCharacterEncoding("utf-8");
		
		Connection con = DBConnect.getConnect();
		String sql = 
"insert into members(id, pwd, name, addr, tel) values(?,?,?,?,?)";
		
		PreparedStatement ps = con.prepareStatement(sql); //명령어 전송
		ps.setString(1, request.getParameter("id")); //물음표에 대한 순번
		ps.setString(2, request.getParameter("pwd"));
		ps.setString(3, request.getParameter("name"));
		ps.setString(4, request.getParameter("addr"));
		ps.setString(5, request.getParameter("tel"));
		
		int result = ps.executeUpdate();
		response.sendRedirect("select.jsp");
	%>
</body>
</html>