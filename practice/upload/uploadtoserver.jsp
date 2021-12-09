<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ page import="com.oreilly.servlet.multipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
		<h2>upload go!</h2>
		<%
			String bang = "../../../hi/";
			MultipartRequest mr = new MultipartRequest(request, bang, 10*1024*1024, "utf-8", new DefaultFileRenamePolicy());

			String name = mr.getParameter("name");
			// String[] file = mr.getFilesystemName("file");

			if (file != null) {
				out.println("사용자 이름은 " + name + " 이시구요<br>");
				// out.println("추카추카 " + file + " 라는 파일 올리기 성공했네요");
			} else {
				out.println("에러에요");
			}
		%>
	</body>
</html>