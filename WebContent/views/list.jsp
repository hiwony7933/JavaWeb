<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<h2>아이템 목록</h2>
	<table align="center" border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>가격</th>
		</tr>
		<!--  list 라는 이름으로 저장된 데이터를 item이라는 변수에 하나씩 대입  -->
		<c:forEach var="item" items="${list}">
			<tr>
			<!--  item에 있는 목록들을 출력  -->
			<td>${item.num}</td>
			<td><a href="./detail/${item.name}">${item.name}</a></td>
			<td>${item.price}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>