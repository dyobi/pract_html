<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isErrorPage="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<%
			double val1 = 37.8;
			String val2 = null;
		%>
		<%= "온달" %> <%-- 표현식 --%>
		${"온달"} <%-- el (expression language) 방식 --%>
		<br>
	</body>
</html>