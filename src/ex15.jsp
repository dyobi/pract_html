<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isErrorPage="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<%
			String name = request.getParameter("name");
			int	kor = Integer.parseInt(request.getParameter("kor"));
			int	eng = Integer.parseInt(request.getParameter("eng"));

			out.println("[scriptlet]<br>이름 " + name + "<br>총점 " + (kor+eng) + "<br>");
		%>
		[el]<br>
		이름 ${param.name}<br>
		총점 ${param.kor + param.eng}<br>
	</body>
</html>