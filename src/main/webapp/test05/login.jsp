<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   	<!-- core 태그 라이브러리를 사용하기 위해 반드시 선언해야함 -->
    
    <c:set var="contextPath" value="${pageContext.request.contextPath}" />
    <%-- <c:set> 태그 이용해 pageContext 내장 객체의 컴텍스트 이름을 변수 contextPath에 미리 설정함--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp">
		아이디 : <input type="text" size=20 /><br>
		비밀번호 : <input type="password" size=20 /><br>
		<input type="submit" value="로그인" />
		<input type="reset" value="다시입력" />
		
		<a href="${contextPath}/test05/memberForm.jsp">회원가입하기</a>
		
	</form>
</body>
</html>