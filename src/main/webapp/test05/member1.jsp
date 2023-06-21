<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*" 
    isELIgnored="false" %>
    
   	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   	<!-- core 태그 라이브러리를 사용하기 위해 반드시 선언해야함 -->
   	
   	<c:set var="id" value="hong" scope="page" />
   	<c:set var="pwd" value="1234" scope="page" />
   	<c:set var="name" value="${'홍길동'}" scope="page" />
   	<c:set var="age" value="${22}" scope="page" />
   	<c:set var="height" value="${177}" scope="page" />
   	<%-- <c:set> 태그를 이용해 변수를 선언함. --%>
   	<%-- value 속성에는 표현 언어를 사용해서 초기화할수 있음--%>
   	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center" >
		<tr align="center" bgcolor="lightgreen">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="7%">이름</td>
			<td width="7%">나이</td>
			<td width="7%">키</td>
		</tr>	
		
		<tr align="center">
			<td>${id}</td>
			<td>${pwd}</td>
			<td>${name}</td>
			<td>${age}</td>	
			<td>${height}</td>	
			<!-- 표현언어로 변수에 바로 접근하여 값을 출력함 -->
		</tr>
		
	</table>
</body>
</html>