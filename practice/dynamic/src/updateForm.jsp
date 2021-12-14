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
			String oriName = request.getParameter("name");
			TelInfoVO tv = tidao.serch+nametel(oriName);
		%>
		<form action="updateProcess.jsp" method="post">
		<table border=2>
		<tr><th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th></tr>
		<tr>
			<td><%=tv.getId() %></td>
			<td><%=tv.getName() %></td>
			<td><input type="text" name="tel" value="<%=tv.getTel()%>"></td>
			<td><%=tv.getD() %></td>
		</tr>
	</body>
</html>