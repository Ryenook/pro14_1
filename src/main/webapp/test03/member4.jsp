<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*" %>
    
   <jsp:useBean id="m1" class="sec01.ex01.MemberBean" />
   <jsp:setProperty property="*" name="m1"/>
   <!-- 회원 가입창에서 전송된 회원 정보를 빈 속성에 설정함 -->
   <jsp:useBean id="membersList" class="java.util.ArrayList" />
   <!-- memberList로 ArrayList객체를 생성함 -->
   
   <%
 		MemberBean m2 = new MemberBean("lee","1234","이순신","lee@test.com");
   		/* 자바코드로 새로운 회원 정보를 저장하는 MemberBean객체를 생성함 */
  		membersList.add(m1);
 		membersList.add(m2);
 		/* 두개의 MemberBean객체를 ArrayList에 저장 함 */
   %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center" >
		<tr align="center" bgcolor="#99ccff">
			<td width="20%">아이디</td>
			<td width="20%">비밀번호</td>
			<td width="20%">이름</td>
			<td width="20%">이메일</td>
		</tr>	
		
		<tr align="center">
			<td>${membersList[0].id}</td>
			<td>${membersList[0].pwd}</td>
			<td>${membersList[0].name}</td>
			<td>${membersList[0].email}</td>			
			<!-- 인덱스가 0이므로 첫번째 회원 정보를 출력함 -->
		</tr>
	</table>
</body>
</html>