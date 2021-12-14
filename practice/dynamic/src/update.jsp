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
			TelInnfoDAO tidao = new TelInfoDAO();
			ArrayList <TelInfoVO> tiArray = tidao.getAllInfo();
		%>
		<table border=2>
		<tr>
			<th>사번</th><th>이름</th><th>전화번호</th><th>입사일</th>
		</tr>
		<%
			for (TelInfoVO temp : tiArray) {
				%><tr>
					<td><%= temp.getId() %></td>
					<td><a href="updateForm.jsp?name=<%=temp.getName()%>"><%=temp.getName()%></a></td>
					<td><%=temp.getTel()%></td>
					<td><%=temp.getD()%></td>
				<tr><%
			}
		%>
	</body>
</html>