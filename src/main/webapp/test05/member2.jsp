<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*" 
    isELIgnored="false" %>
    
   	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   	
   	<jsp:useBean id="membersList" class="java.util.ArrayList" />
   	<jsp:useBean id="membersMap" class="java.util.HashMap" />
   	
   	<%
   		
   		MemberBean m1 = new MemberBean("son", "1231", "손흥민", "son@test.com");
   		MemberBean m2 = new MemberBean("ki", "1231", "기성용", "ki@test.com");
   		membersList.add(m1);
   		membersList.add(m2);
   		
   		membersMap.put("membersList",membersList);
   		/* 맵 객체에 키벨류로 저장 */
   	%>
   	
   	<c:set var="membersList" value="${membersList}" />
	<%-- <c:set> 태그를 이용해 HashMap에 저장된 ArrayList에 접근하기 위해 사용하기 편리한 이름으로 설정함 --%>  	
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
			<td width="7%">이메일</td>
			
		</tr>	
		
		<tr align="center">
			<td>${membersList[0].id}</td>
			<td>${membersList[0].pwd}</td>
			<td>${membersList[0].name}</td>
			<td>${membersList[0].email}</td>			
			<!-- 인덱스가 0이므로 첫번째 회원 정보를 출력함 -->
		</tr>
		
		<tr align="center">
			<td>${membersList[1].id}</td>		
			<td>${membersList[1].pwd}</td>
			<td>${membersList[1].name}</td>
			<td>${membersList[1].email}</td>
			<!-- 인덱스가 0이므로 첫번째 회원 정보를 출력함 -->
		</tr>
		
	</table>
</body>
</html>