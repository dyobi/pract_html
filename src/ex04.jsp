<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		getHeader	--> <%= request.getHeader("user-agent") %><br>
		RequestURI	--> <%= request.getRequestURI() %><br>
						<%-- 프로젝트명/파일.jsp --%>
		ServletPath	--> <%= request.getServletPath() %><br>
						<%-- 프로젝트명은 안나옴/파일.jsp --%>
		ServerName	--> <%= request.getServerName() %><br>
						<%-- localhost --%>
		ServerPort	--> <%= request.getServerPort() %><br>
						<%-- 8080 --%>
		Protocol	--> <%= request.getProtocol() %><br>
						<%-- HTTP/1.1 --%>
		Method		--> <%= request.getMethod() %><br>
						<%-- GET --%>
	</body>
</html>