<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="https://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h2>강남스타일 아니죠 - 자바스타일</h2>
		<%
			String[] kwail = (String[])session.getAttribute("kwail");
			for (String temp : kwail) {
				out.println(temp + "<br>");
			}
		%>
		<h2>jstl + EL스타일</h2>
		<c:forEach var="temp" items="${sessionScope.kwail}">
			${temp}<br>
		</c:forEach>
	</body>
</html>