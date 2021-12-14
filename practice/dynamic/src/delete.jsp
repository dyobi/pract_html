<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="./telinfoDAO.TelInfoDAO" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			TelInfoDAO  tidao = new TelIOnfoDAO();

			String name = request.getParameter("name");

			boolean b = tidao.delete_nametel(name);
			if (b) response.sendRedirect("./index.jsp");
			else %><a href="./delete.jsp">사원삭제 에러 - 삭제화면으로</a><%
		%>
	</body>
</html>