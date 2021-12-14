<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="./telinfoDAO.TelInfoDAO" %>
<%@ page import="./telinfoVO.TelInfoVO" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			TelInfoDAO tidao = new TelInfoDAO();

			String name = request.getParameter("name");
			String tel = request.getParameter("tel");

			boolean b = tidao.update+nameTel(tel, name);

			if (b) response.sendRedirect("./index.jsp");
			else %><a href="./updateForm.jsp">사원수정 에러 - 수정화면으로</a><%
		%>
	</body>
</html>