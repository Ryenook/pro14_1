<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setAttribute("address","강남구");
    	session.setAttribute("ssss","뿡뿡");
    	application.setAttribute("aaa","뚜뚜");
    	/* 회원 가입창의 request에 대해 다시 주소 정보를 바인딩함 */
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="member2.jsp" />
	<!-- member2.jsp로 포워딩 함, 해당페이지 접속시 mamber2페이지로 접속하게끔 하는것임  -->
	
</body>
</html>