<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post 방식의 파라미터 읽기 </title>
</head>
<body>
	<%
		//파라미터 인코딩 설정 
		request.setCharacterEncoding("utf-8");
		String pw = request.getParameter("pw");
		String words = request.getParameter("words");
	%>
	<p>pw : <%=pw %></p>
	<p>word : <%=words %></p>
</body>
</html>