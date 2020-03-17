<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginprocess</title>
</head>
<body>
	<%
		//파라미터 읽기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String idsave = request.getParameter("idsave");

		// null은 메소드를 불러올수 읍다. 
		// null이 누군가 호출하는 이벤트 
		// 상수를 왼쪽으로  1 == a, a == 1  의 생각이 필요 함.

		//idsave 란에 체크가 안되어 있으면 id라는 쿠키를 삭제 
		//idsave 란에 체크가 되어 있으면 id 라는 쿠키에 입력한 아이디를 저장 
		Cookie cookie = new Cookie("id", id);
		if (idsave == null) {  	// idsave에체크가 안되어 있으면 setMaxAge =0으로 설정해서 소멸 
			cookie.setMaxAge(0);
		}
		response.addCookie(cookie);

		//결과 페이지로 리다이렉트
		response.sendRedirect("./loginresult.jsp");
	%>
</body>
</html>