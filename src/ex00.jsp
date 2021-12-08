<%-- 
	<%@ => 지시어 접두어 (directive prefix)
	<%@ page : 페이지에 대한 지시어
	charset=~~ : 페이지 인코딩 방식
	pageEncoding=~~ : jsp자체의 인코딩 방식

	euc-kr : 한글, 영어 모두 2바이트로 표현 (한글 등이 많으면 상대적으로 메모리 사용이 비교적 적어짐)
	utf-8 : 영어 1방이트, 한글, 일어, 중국어 3바이트, 1919문자 2바이트 (한글 등이 많으면 메모리 사용이 비교적 많아짐) 

	[jsp 내장객체 9가지]
	out, request, response, page, session, application, exception, config, pageContext
 --%>

<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		body가 있지만 파일 확장자는 .jsp <br>
		오늘 날짜를 출력해보자 (자바문법을 script하여) <br>
		<%
			Date d1 = new Date();
			out.println("<h2>날짜 출력이라고?!</h2>" + "\t" + d1 + "<p>");
			out.println(request.getRequestURI() + "로 요청한 URI구만" + "<br>");
		%>
	</body>
</html>