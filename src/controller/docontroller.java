package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿을 호출할 URL 패턴을 설정 
//@WebServlet("*.do")
@WebServlet("/auth/*")
//@WebServlet({"*.do", "*.nhn"})
public class docontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public docontroller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//공통된 URL을 제거한 사용자 요청 경로와 전송방식을 출력
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length() + 1) ;
		
		// 요청 방식 확인 
		String method = request.getMethod();
		
		// Controller에서는 URL 과 Method를 이용해서 요청을 구분해서 처리 
		// Spring 에서는 이 작업까지를 해서 우리는 작성만 하면된다. 
		
		response.getWriter().append("<h3>" + command + ":" + method + "</h3>");
		
		// response.getWriter().append("<h3>확장자가 do 인 요청처리<h3>");
		// response.getWriter().append("<h3>auth directory<h3>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
