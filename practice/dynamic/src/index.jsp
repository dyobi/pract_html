<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="./telinfoVO.TelInfoVO" %>
<%@ page import="./telinfoDAO.TelInfoDAO" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h1>사원 전체 명단</h1>
		<%
			request.setCharacterEncoding("utf-8");
			TelInfoDAO tidao = new TelInfoDAO();
			ArrayList <TelInfoVO> tiArray = tidao.getAllInfo();
		%>
		<table border=2>
			<tr>
				<th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th>
			</tr>
			<% for (TelInfoVO temp : tiArray) { %>
			<tr>
				<td><%= temp.getId() %></td>
				<td><%= temp.getName() %></td>
				<td><%= temp.getTel() %></td>
				<td><%= temp.getD() %></td>
			</tr>
			<% } %>
		</table>
		<table border=0>
			<tr>
				<td><a href="./insert.jsp">[입력]</a></td>
				<td><a href="./update.jsp">[수정]</a></td>
				<td><a href="./delete.jsp">[삭제]</a></td>
			</tr>
		</table>
	</body>
</html>