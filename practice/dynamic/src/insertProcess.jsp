<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="./telinfoDAO.TelInfoDAO" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h1>사원 정보 입력</h1>
		<%
			request.setCharacterEncoding("utf-8");
			TelInfoDAO tidao = new TelInfoDAO();

			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String tel = request.getParameter("tel");
			String sDate = request.getParameter("sDate");
		%>

		<%
			
		%>
	</body>
</html>