<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"%> <!-- 표현언어 기능을 활성화 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어에서 사용되는 데이터들</title>
</head>
<body>
	<h1>표현언어로 여러가지 데이터 출력하기</h1>

<%-- 		\${100}: ${100} <br>
		\${"안녕하세요"}: ${"안녕하세요"} <br>
		\${10+1}: ${10+1} <br>
		\${10+2}: ${10*2} <br>
		\${"10"+1}: ${"10"+1} <br>
		\${"hi3"}<br>
		\${null + 10}: ${null + 10}<br>
		\${null * 10}: ${null * 10}<br> --%>
		
		${true && true}<br>
		${true && false}<br>
		${true || false}<br>
		${false || true}<br>
		<hr>
		
		${1 == 1}<br>
		${1 != 1}<br>
		${1 < 2}<br>
		${1 > 2}<br>
		<hr>
		
		${1 eq 1}<br>
		${1 gt 1}<br>
		${1 lt 1}<br>
		<hr>
		
		${true?"hi":"bye" }
		<hr>
		
		${false?"hi":"bye" }
		<hr>
				
		${empty null }
		<hr>
		
		${"hello" != "apple" }<br>
		
		
		
		<%-- \${"안녕" + 11}: ${"안녕" + 11}<br> --%>


</body>
</html>