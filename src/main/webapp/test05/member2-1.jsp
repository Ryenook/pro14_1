<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*" 
    isELIgnored="false" %>
    
   	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   	
   	<jsp:useBean id="membersMap" class="java.util.HashMap" />
   	
   	<%
   		membersMap.put("id","아디");
   		membersMap.put("pw","pp");
   		membersMap.put("name","넴");
   		membersMap.put("email","멜");
   		/* 맵 객체에 키벨류로 저장 */
   	%>
   	
   	<c:set var="membersList" value="${membersList}" />
	<%-- <c:set> 태그를 이용해 HashMap에 저장된 ArrayList에 접근하기 위해 사용하기 편리한 이름으로 설정함 --%>
	<c:set var="vava" value="${membersMap}" />  
	<%-- <c:remove var="vava"/> 삭제 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	${membersMap}<br>
	${membersMap.id}<br>
	
	${vava.id}
	<!-- 상단 var로 변수선언하여 key값으로 불러옴  -->

</body>
</html>