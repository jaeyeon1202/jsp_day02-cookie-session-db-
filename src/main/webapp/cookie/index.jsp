<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>CARE LAB</h1>
	<%
		boolean bool = true;
		
		Cookie[] cookieArr = request.getCookies(); //사용자 요청이 있으면 사용자로부처 쿠키 가져와, 모든 쿠기 다 가져와
		if(cookieArr != null){ //쿠키 배열이 널이 아니라면 (쿠키 값이 있다면)
			for(Cookie c : cookieArr){ //쿠키출력
				out.print("name: " + c.getName()+"<br>");
				out.print("value: " + c.getValue()+"<br>");
				if(c.getName().equals("testCookie")){
					bool = false; //true:쿠키없어 flase: 쿠키있어		
				}
			}
		}
		//최초엔 쿠키값없음 => 새로고침하면 쿠키값 생겨
		//순서: 인덱스페이지 요청 -> 이클립스 서버 -> 사용자한테 쿠키 가져오기(하지만 아직 쿠키 전달 안됨)
		// -> 안들어온체로 출력 -> 기본제공 쿠키 출력 -> 새로고침 쿠키값 전달되서 내가 만든 쿠키값 출력됨
		
		//쿠키전달
		Cookie cookie = new Cookie("testCookie", "myCookie"); //쿠키 설정
		cookie.setMaxAge(5); //5초동안 유지하겠다.
		cookie.setPath("/"); //내가 만든 프로젝트 전체적으로 모든 경ㄹ에서 사여ㅛㅇ할수 있게 최상위 경로로 설정
		
		response.addCookie(cookie); //사용자한테 보내주겠다. 5초 지나면 사라져
	%>
	<% if(bool){ %>
		<script type="text/javascript">
			window.open("popup.jsp","",
					"width=300, height=200, top=500, left=500");
		</script>
	<%} %>
	
</body>
</html>