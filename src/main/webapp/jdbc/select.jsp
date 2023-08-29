<%@page import="java.sql.ResultSet"%>
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
		Connection con =DBConnect.getConnect();
		System.out.println("jsp=>"+con);
		
		String sql = "select * from members";
		PreparedStatement ps = con.prepareStatement(sql); //명령어를 전송하는 객체
		ResultSet rs = ps.executeQuery(); //셀렉트는 쿼리 나머지는 업데이트 
		while(rs.next()){ %>
			id : <%= rs.getString("id") %><br>
			pwd : <%= rs.getString("pwd") %><br>
			name : <%= rs.getString("name") %><br>
			addr : <%= rs.getString("addr") %><br>
			tel : <%= rs.getString("tel") %><hr>
		<% } %>
		<a href="insert.jsp">데이터 추가</a>

</body>
</html>