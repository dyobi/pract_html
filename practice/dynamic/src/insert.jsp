<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h1>사원 정보 입력</h1>
		<form action="./insertProcess.jsp" method="post">
			<table border=2>
				<tr><td>사번</td><td><input type="text" name="id"></td></tr>
				<tr><td>이름</td><td><input type="text" name="name"></td></tr>
				<tr><td>전화번호</td><td><input type="text" name="tel"></td></tr>
				<tr><td>입사일</td><td><input type="text" name="sDate"></td></tr>
				<tr><td colspan=2><input type="submit" value="추가"></td></tr>
			</table>
		</form>

		<table border=0>
			<tr>
				<td><a href="./insert.jsp">[입력]</a></td>
				<td><a href="./update.jsp">[수정]</a></td>
				<td><a href="./delete.jsp">[삭제]</a></td>
				<td><a href="./index.jsp">[모두보기]</a></td>
			</tr>
		</table>
	</body>
</html>