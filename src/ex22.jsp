<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<%
			String[] kwail = {"사과", "배", "감"};
			session.setAttribute("kwail", kwail);
		%>
		<a href="./ex23.jsp">가자 Foreach</a>
	</body>
</html>