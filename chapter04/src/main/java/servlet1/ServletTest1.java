package servlet1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletTest")
public class ServletTest1 extends HttpServlet {
//	private static final long serialVersionUID = 1L; <- 지워도되는 변수
	
//  JSP에서 선언문의 변수와 메소드는 이곳에 만들어짐	
//     <%! int num; void method() {};>
/*
	int num;
	void method() {
		
	}
*/
	protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {		
//                                                           어떻게 보여줄지                      이러한 exception이 발생할수있다
// JSP에서 스크립트릿에서 선언한 변수는 이곳에 만들어짐
// <% int num2=0; %>
/*
  int num2=0;
*/
// getWriter = 쓰는것
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<body>");
		out.print("<h1>서블릿으로 html문서 만들기 </h1>");
		out.print("</body>");
		out.print("</html>");
	}
}