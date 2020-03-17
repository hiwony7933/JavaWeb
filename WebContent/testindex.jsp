<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
<!--  애니메이션 설정 css  -->
<link rel="stylesheet" href="./css/css.css"> 

</head>
<body>
	<!--  애니메이션 css  -->
	<img src="./image/ball.png" width="100" height="100"/>
	
	<h2>처음 만들어보는 Java Web Project</h2>
	<!--  0211 -->
	<h3 class = "0211">0211 study</h3>
	<ol>
		<li><a href="./0211/second.jsp" target="content">JSP 파일 호출하기</a></li>
		<li><a href="first" target="content">서블릿 호출하기 </a></li>
		<li><a href="./0211/requestUse.jsp" target="content">request 객체의 메소드 </a></li>
	</ol>
	<!--  0212 -->
	<h3 class = "0212">0212 study</h3>
	<ol>
		<li><a href="./0212/parameter/para.jsp" target="content">파라미터 수정 </a></li>
		<li><a href="./0212/out/out.jsp" target="content">out 객체 이용 </a></li>
		<li><a href="./0212/app/application.jsp" target="content">application 객체</a></li>
		<li><a href="./0212/result/input.jsp" target="content">포워딩과 리다이렉트의 차이</a></li>
	</ol>
	<!--  0213  -->
	<h3 class="0213">0213 study</h3>
	<ol>
		<li><a href="./0213/cookie/cookieUse.jsp" target="content"> 쿠키 실습 </a></li>
		<li><a href="./0213/cookie/login.jsp" target="content"> 쿠키를 이용한 아이디 저장  </a></li>	
		<li><a href="./0213/webstorage/login.jsp" target="content">웹스토리지를 이용한 아이디저장 </a></li>
		<li><a href="./0213/session/index.jsp" target="content">세션 로그인 </a></li>
		<li><a href="./0213/error/input.jsp" target="content">에러 페이지 설정 </a></li>
	</ol>
	<!--  0214 -->
	
	<h3 class="0214">0214 study</h3>
	<ol>
		<li><a href="./0214/" target="content"></a></li>
		<li><a href="./0214/" target="content"></a></li>
		<li><a href="./0214/" target="content"></a></li>
		<li><a href="./0214/" target="content"></a></li>
	
	</ol>
	
	<h4> output </h4>
	<iframe name="content" width="500" height="500" > </iframe>

	<!--  Script 공부좀..  -->
	<!--  <script src ="./script/navigator.js"></script> -->
 	
	<%@ page import="java.io.*, java.sql.*, java.text.*"%>
	<%
		long d = System.currentTimeMillis();	//오늘 날짜를 문자열로 생성

		//java.sql.Date 는 날짜만 저장하고 toString을 호출하면 날짜만 문자열로 리턴 
		Date today = new Date(d);
		String filename = today.toString();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd EEEE a hh:mm:ss");	// 날짜를 문자열로 변경해주는 클래스 - 생성할 때 서식을 입력
		String msg = sdf.format(today);
		
		//파일에 기록할 수 있는 객체를 생성 
		//파일이 없으면 생성하고 있으면 뒤에 이어붙이도록 생성 
		PrintWriter pw = new PrintWriter(new FileOutputStream("/Users/jw/javalab/WebPro/WebContent/log/" + filename + ".log", true));
		
		String ip = request.getRemoteAddr();		//접속한 IP주소 가져오기 
		String requestURI = request.getRequestURI();		//요청한 URL 가져오기 - 전체요청 경로 	
		String contextPath = request.getContextPath();		//루트 경로 
		String url = requestURI.substring(contextPath.length() + 1);	// 전체 요청 경로에서 루트 경로 제외하기
		
		//파일에 기록
		pw.println(msg + "-" + ip + "-" + url + "\n");
		pw.flush();
		pw.close();
	%>
</body>
</html>