<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	String bmi = String.format("%.2f", Double.parseDouble(weight)/(Math.pow(Double.parseDouble(height), 2)/10000));
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h2>
			당신의 이름 : <%=name%> &nbsp;&nbsp;&nbsp;
			당신의 키(cm) : <%=height%> &nbsp;&nbsp;&nbsp;
			당신의 몸무게(kg) : <%=weight%><p>
		</h2>
		<h1>
			<%=name%> 님의 BMI는 <%=bmi%> 입니다.
		</h1>
	</body>
</html>
