<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<c:if test="${not empty param.userid }"> <!-- id가 admin이면 관리자 화면을 출력함 -->
		<c:if test="${param.userid =='admin'}">
			<h1>관리자로 로그인 했습니다</h1>
			<form>
				<input type="button" value="회원정보 삭제하기"/>
				<input type="button" value="회원정보 수정하기"/>
			</form>
		<!-- id가 admin이면 관리자 화면을 출력함  -->
		</c:if>
		
		<c:if >
			<h1>환영합니다.<c:out value="${param.userid }"/>님!!!</h1>
		</c:if> <!-- id를 정상적으로 입력한 경우 로그인 메시지를 출력함 -->
		<!-- id가 admin이 아니면 로그인 메시지를 출력함  -->
	</c:if>
	
</body>
</html>