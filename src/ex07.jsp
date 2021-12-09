<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" errorPage="./error.jsp" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<%
			int age = Integer.parseInt(request.getParameter("age"));
			out.println("나이는 " + age);
		%>
	</body>
</html>