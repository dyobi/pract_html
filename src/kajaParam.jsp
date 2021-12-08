<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<%  //scriptlet 스크립트릿
String name=""; /////////
/* if ("GET".equals(request.getMethod())) 
    request.setCharacterEncoding("utf-8");////// */
 name= request.getParameter("name");
  
%>

이름은 <%= name %> 이군요 
     <%-- expression 표현식 --%>

 안녕! 방가방가!!!!!!!!
 

