<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="sec01.ex01.*, java.util.* " %>
    
    <%-- <%
    	List mlist = (List)request.getAttribute("mlist");
    %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%= mlist %><br>
	<%= mlist.get(0) %><br> --%>
	${mlist[0].id} <br>
	${mlist[1].email}
	<!-- key값으로 인식이 되므로 forward의 value를 변경하여도 인식됨 -->
	


</body>
</html>