<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h2>가방 구입하러 왔당</h2>
		<%
			String id = (String)session.getAttribute("s_id");
			String pwd = (String)session.getAttribute("s_pwd");
			
			if ("babo".equals(id) && "babo".equals(pwd)) {
				out.println("<img src=\"../../img/bread.jpg\" width=\"400\">");
				out.println("<h2>미안 가방이 아니었네</h2>");
			} else {
				out.println("<h2>아이디 및 암호 입력 에러입니다. 로그인 화면으로 갑니다</h2>");
				out.println("<a href=\"./index.html\">여기</a>를 누르세요<br>");
			}
		%>
	</body>
</html>