<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" isErrorPage="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		${"형이 말하는데 el 네가 거기서 왜 나와"}<br>
		${"el"}은 참 간단해서 좋지만 공부는 해야해<br>
		${"다음 el의 답은 뭘까"}<br>
		${100} ${100+200} ${100 > 2} ${200.35} ${10 % 3}<br>
		${false} ${empty kab2} ${empty ""} ${empty "a"} ${null}<br>
		등 같은 표현이 가능해<br>
		<br>
		<%= Integer.parseInt("100") * 200 %><br>
		${"100" * 200}<br>
		${"100*200"}<br>

		${ 50 == 50 }<br>
		${ 50 eq 50 }<br>
		${ (100 > 3) ? "커" : "작아" }<br>
	</body>
</html>