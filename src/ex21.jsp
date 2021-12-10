<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="https://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="https://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h3>JSTL & EL Style</h3>

		<!-- request.setCharacterEncoding("UTF-8"); -->
		<fmt:requestEncoding value="UTF-8"></fmt:requestEncoding>
		아하 이름은 <c:out value="${param.name}"></c:out>
		그리고 전화번호는 <c:out value="${param.tel}"></c:out>
	</body>
</html>