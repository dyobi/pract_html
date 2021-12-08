<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		</pre>
			원래는 이화면이 출력되는 것인데
			변신을 해서 다른 회면이 출력된당
		<pre>
		<%
			response.sendRedirect("../src/ex06.jsp");
		%>
		로그인 하고 왔어 ~ 안했어~ 다시 로그인 화면으로 보내자
	</body>
</html>