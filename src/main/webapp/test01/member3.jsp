<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="m" class="sec01.ex01.MemberBean"/>
    <!-- new연산자 대신 위 코드로 회원 정보를 저장할 빈을 생성 함  -->
    <jsp:setProperty property="*" name="m"/>
    <!-- 전송된 학원 정보를 빈의 속성에 설정함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<tr align="center">
		<td><%=m.getId() %></td>
		<td><%=m.getPwd() %></td>
		<td><%=m.getName() %></td>
		<td><%=m.getEmail() %></td>
		<!-- 표현식을 이용해 회원 정보를 출력함 -->
	</tr>
	
	<tr align="center">
		<td>${m.id}</td>	
		<td>${m.pwd}</td>	
		<td>${m.name}</td>	
		<td>${m.email}</td>	
		<!-- 빈 id와 속성 이름으로 접근해 회원정보를 출력함 -->
	</tr>
</body>
</html>