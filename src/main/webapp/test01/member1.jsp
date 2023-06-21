<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*"%>

		<jsp:useBean id="m" class="sec01.ex01.MemberBean" scope="page" />
		<jsp:setProperty property="*" name="m" />
		

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록창</title>
</head>
<body>

	<table border="1" align="center" width="100%">
		<tr align="center" bgcolor="#99ccff">
			<td width="20%">아이디</td>
			<td width="20%">비밀번호</td>
			<td width="20%">이름</td>
			<td width="20%">이메일</td>
		</tr>		

		<tr align="center">
			<td>${param.id}</td>
			<td>${param.pwd}</td>
			<td>${param.name}</td>
			<td>${param.email}</td>			
			<!-- param객체를 이용해 getParameter() 메서드를 이용하지 않고 바로 회원 정보를 출력함 -->
		</tr>
		
		
		<tr align="center">
			<td>${m.id}</td>
			<td>${m.pwd}</td>
			<td>${m.name}</td>
			<td>${m.email}</td>			
			<!-- param객체를 이용해 getParameter() 메서드를 이용하지 않고 바로 회원 정보를 출력함 -->
		</tr>
	</table>
	
	${param} <hr>
	${m}
</body>
</html>