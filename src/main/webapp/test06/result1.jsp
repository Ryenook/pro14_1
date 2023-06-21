<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${empty param.userid }">
	<!-- empty 연산자를 이용해 ID값이 비었는지 체크 함 -->
		아이디를 입력하세요.<br>
		<a href="login.jsp">로그인창</a>
	</c:if>
	
	<c:if test="${not empty param.userid }">
		<h1>환영합니다.<c:out value="${param.userid }"/>님!!!</h1>
	</c:if> <!-- id를 정상적으로 입력한 경우 로그인 메시지를 출력함 -->

</body>
</html>