<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	String jong = request.getParameter("jong");
	String[] jepoom = request.getParameterValues("jepoom");
	String way = request.getParameter("way");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h2>구입내역</h2>
		<table border="2" width="700">
			<tr>
				<td>제품종류 번호 및 제목</td>
				<td>
				<%
					if (jong != null) {
						out.println(jong);
					}
				%>
				</td>
			</tr>
			<tr>
				<td>제품선택</td>
				<td>
				<%
					if (jepoom != null) {
						for (int i = 0; i <jepoom.length; i++) {
							out.println(jepoom[i] + "<br>");
						}
					}
				%>
				</td>
			</tr>
			<tr>
				<td>구입방법</td>
				<td>
				<%
					if (way != null) {
						out.println(way);
					}
				%>
				</td>
			</tr>
			<tr>
				<td colspan=2>
					다시 구입하시려면 <a href="../exercise/ex37.html">여기</a> 를 누르세요
				</td>
			</tr>
		</table>
	</body>
</html>
