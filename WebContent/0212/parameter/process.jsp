<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 처리 페이지 </title>
</head>
<body>
	<%
		//파라미터 읽기 - 없는 name을 사용하면 null이 리턴되고 입력을 않하면 ""이 리턴됨. 
		String query = request.getParameter("query");
		String name = request.getParameter("name");
	%>
	<p>query:<%=query %></p>
	<p>name:<%=name %></p>
</body>
</html>