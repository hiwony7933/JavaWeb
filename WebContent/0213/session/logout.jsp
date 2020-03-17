<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//세션 삭제
		session.invalidate();

		//보통은 로그아웃하면 메인 페이지로 리다이렉트 
		//response.sendRedirect("./");
	%>
	<h3>로그아웃 하셨습니다. </h3>
	<h4>5초후에 메인페이지로 이동한다. </h4>
	<script>
		//5초 후에 ./로 이동 
		setTimeout(function(){
			location.href="./";
		}, 5000)
	</script>
</body>
</html>