<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="https://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<c:out value="안녕 jstl" /><br>
		<% out.println("안녕 jstl"); %><br>

		<!-- jstl & el 1 = -->
		<% String aa = "chokichi"; %>
		<%= aa %>

		<c:set var="bb" value="chokichi"></c:set><br>
		${bb}<br>

	</body>
</html>