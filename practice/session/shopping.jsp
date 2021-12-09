<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h2>뭘살까???</h2>
		<%
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
		%>
		아하 아이디는 <%= id %> 이고 암호는 <%= pwd %> 이군요
		<%
			session.setAttribute("s_id", id);
			session.setAttribute("s_pwd", pwd);
			// session.invalidate(); delete session
		%>
		<p><hr><p>
		가방 쇼핑은 <a href="bags.jsp">여기</a> 를 누르세요<br>
		구두 쇼핑은 <a href="shoes.jsp">여기</a> 를 누르세요<br>
	</body>
</html>