<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<%		// Scriptlet
			if ("hello".equals(id) && "1234".equals(pwd)) {
				out.println("<h2>Verified Email</h2>");
			} else {
				out.println("<h2>Your email is not valid</h2>");
			}
		%>
		아이디는 <%=id%>이고 암호는 <%=pwd%>이구나<p>
	</body>
</html>

<%-- <%=?%> <== expression, 표현식 --%>