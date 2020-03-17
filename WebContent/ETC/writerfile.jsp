<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	var userAgent = navigator.userAgent;
	
	var mobile = ["iphone", "ipad", "android"];
	
	var reslut = false ;
	for(var idx in mobile) {
		if(userAgent.toLowerCase().indexOf(mobile[idx]) >=0){
			result = ture;
			break;
		}
	}
	if(result == true){
		
	}

</script>


</head>
<body>

	<%@ page import="java.io.*, java.sql.*"%>
	<%
		//오늘 날짜를 문자열로 생성
		long d = System.currentTimeMillis();

		//java.sql.Date 는 날짜만 저장하고 toString을 호출하면 날짜만 문자열로 리턴 
		Date today = new Date(d);
		String filename = today.toString();

		//파일에 기록할 수 있는 객체를 생성 
		//파일이 없으면 생성하고 있으면 뒤에 이어붙이도록 생성 
		PrintWriter pw = new PrintWriter(new FileOutputStream("./0212/" + filename + ".log", true));
		
		String ip = request.getRemoteAddr();		//접속한 IP주소 가져오기 
		String requestURI = request.getRequestURI();		//요청한 URL 가져오기 - 전체요청 경로 	
		String contextPath = request.getContextPath();		//루트 경로 
		String url = requestURI.substring(contextPath.length() + 1);	// 전체 요청 경로에서 루트 경로 제외하기
		
		//파일에 기록
		pw.println(ip + "-" + url + "\n");
		pw.flush();
		
		pw.close();
	%>

</body>
</html>