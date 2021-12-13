<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		아하 이름은 <%= request.getAttribute("name") %> 이시고<br>
		학점은 <%= request.getAttribute("grade") %> 학점 이시군요<br>
	</body>
</html>