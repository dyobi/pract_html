<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
	<%
		String name = request.getParameter("name");
		int score = Integer.parseInt(request.getParameter("score"));

		String grade = null;

		// Controller
		if (score >= 90)
			grade = "A";
		else if (score >= 80)
			grade = "B";
		else if (score >= 70)
			grade = "C";
		else if (score >= 60)
			grade = "D";
		else
			grade = "F";
	%>
	<%-- View --%>
	아하 이름은 <%= name %> 이시고 <br>
	학점은 <%= grade %> 학점 이시군요
	</body>
</html>