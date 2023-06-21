<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*" 
    isELIgnored="false" %>
    
   <jsp:useBean id="m1" class="sec01.ex02.MemberBean" />
   <jsp:setProperty property="*" name="m1"/>
   <!-- 회원 가입창에서 전송된 회원 정보를 빈 속성에 설정함 -->
   <jsp:useBean id="addr" class="sec01.ex02.Address" />
   
   <jsp:setProperty property="city" name="addr" value="서울" />
   <jsp:setProperty property="zipcode" name="addr" value="07654" />
   <!-- Address빈을 생성한후 도시(city)와 우편번호(zipcode)를 생성함 -->
   
   <% 
  		 m1.setAddr(addr); 
   		/* MemberBean의 addr 속성에 Address빈을 설정함 */
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
			<td>${m1.id}</td>
			<td>${m1.pwd}</td>
			<td>${m1.name}</td>
			<td>${m1.email}</td>	
			<td><%= m1.getAddr().getCity() %></td>		
			<td><%= m1.getAddr().getZipcode() %></td>		
			<!-- 속성들의 getter를 두 번 호출해서 주소를 출력함 -->
		</tr>
		<tr align="center">
			<td>${m1.id}</td>
			<td>${m1.pwd}</td>
			<td>${m1.name}</td>
			<td>${m1.email}</td>	
			<td>${m1.addr.city}</td>		
			<td>${m1.addr.zipcode}</td>		
			<!-- 자바빈의 속성 이름과 .(마침표) 연산자를 이용해 주소를 출력함 -->
		</tr>
	</table>
</body>
</html>