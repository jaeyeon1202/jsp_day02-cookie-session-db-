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
	<h3>인 적 사 항</h3>
	<%
		Connection con = DBConnect.getConnect();
		
		String id = request.getParameter("id");
		System.out.println(id);
		
		String sql = "select * from student where id="+id;
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()){%>
	
	학번: <%= rs.getString("id") %> <br><br>
	이름: <%= rs.getString("name") %> <br><br>
	국, 영, 수: <%= rs.getString("kor") %>,<%= rs.getString("eng") %>, <%= rs.getString("math") %><br>
	<% } %>
	<a href="list.jsp">돌아가기</a>
</body>
</html>