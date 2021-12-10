<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<%
			String name = request.getParameter("name");
			String tel = request.getParameter("tel");

			session.setAttribute("name", name);
			session.setAttribute("tel", tel);

			if (tel.equals("bimil")) {
				%><jsp:forward page="./ex17.jsp" /><%		//action tag : xml문법형식 like response.sendRedirect()
			} else {
				%><jsp:forward page="./ex18.jsp" /><%
			}
		%>
	</body>
</html>