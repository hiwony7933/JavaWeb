<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="content">
	<%
		//로그인 여부는 session 의 id에 데이터가 있으면 로그인 한 것이고 없으면 로그인 안한 것이다. 
		Object id = session.getAttribute("id");
		if(id == null){
			out.println("<a href='./login.jsp'>로그인</a><br/>");
		}else{
			out.println("<p>" + session.getAttribute("nickname") + "님 </p>");
			out.println("<p><a href='./logout.jsp'>로그아웃</a></p>");
		}
	%>
	</div>
</body>
</html>