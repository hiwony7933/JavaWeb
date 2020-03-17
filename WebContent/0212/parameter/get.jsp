<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get 방식의 파라미터 읽기 </title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		
		// hobby는 체크박스인데 getParameter로 읽으면 첫번째 선택된 항목 하나만 넘어감.
		// 이런 경우에는 getParameterValues로 읽어서 배열로 리턴받아야 한다. 
		//String hobby = request.getParameter("hobby");
		String [ ] hobby = request.getParameterValues("hobby");
		String age = request.getParameter("age");
	%>
	<p>name : <%=name %></p>
	<!--  배열은 바로 출력하면 안되고 반목문을 이용해서 출력  -->
	<p>hobby : <%for(String imsi : hobby){out.write(imsi+'\t');} %></p>
	<p>age : <%=age %></p>
</body>
</html>