<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*" 
    isELIgnored="false" %>
    
   	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<c:set var="num" value="${101 }" />
	<%-- <c:choose>
		<c:when test="${num <= 100 && num >= 90 }">A</c:when>
		<c:when test="${num < 90 && num >= 80 }">B</c:when>
		<c:when test="${num < 80 && num >= 70 }">C</c:when>
		<c:when test="${num > 100 }"> 이런 점수는 없습니다</c:when>
		<c:otherwise>F</c:otherwise>
	</c:choose> --%>
	
	<c:forEach begin="1" end="10" var="i">
	${i }
	</c:forEach><br>
	<hr>
		
	<c:forEach begin="1" end="10" var="i" step="2"><!--  step 2씩 증가하겠다 -->
	${i }
	</c:forEach><br>
	<hr>
	
	<c:forEach begin="1" end="20" var="i" varStatus="loop">
	${i } : ${loop.index }<br>
	</c:forEach>
	<hr>
	
	<c:forEach begin="1" end="20" var="i" varStatus="loop">
	${i } : ${loop.count }<br>
	</c:forEach>
	<hr>
	
	<c:forEach begin="1" end="5" var="i" varStatus="loop">
	${i } : ${loop.first }<br>
	</c:forEach>
	<hr>
	
	<c:forEach begin="1" end="5" var="i" varStatus="loop">
	${i } : ${loop.last }<br>
	</c:forEach>
	<hr>
	
	<c:set var="tot" value="0" />
	<c:forEach begin="1" end="10" var="i">
	
	${tot = tot + i} <br>
	</c:forEach>
	최종값 ${tot}
	<hr>
	
	<c:forEach begin="2" end="5" var="i">
		<c:forEach begin="1" end="5" var="j">
			${i}*${j} = ${i*j }&nbsp;&nbsp;&nbsp;
		</c:forEach> <br>
	</c:forEach>
	
	
	
</body>
</html>