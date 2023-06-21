<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>시험 점수를 입력해주세요</h1>
	<form action="scoreResult1.jsp" metthod ="post">
	<!-- 입력한 시험점수를 scoreResult1.jsp로 전송함(전공자는 예제 파일의 매핑 이름을 확인한후 실행함 -->
	시험점수 : <input type="text" name="score" /><br>
	<input type="submit" value="학점변환" />
	</form>
</body>
</html>