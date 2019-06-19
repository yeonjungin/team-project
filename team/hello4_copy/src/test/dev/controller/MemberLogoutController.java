package test.dev.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String logout="dwd";
		HttpSession session=request.getSession();
		
		if(session!=null && session.getAttribute("session_id")!=null) {
			
			System.out.println(session.getAttribute("logout")+"logout");
			logout = (String) session.getAttribute("logout");
			if(logout.equals("1"))
			{
				session.invalidate();
				response.sendRedirect("./mainpage2.jsp");
				return;
			}else if (logout.equals("2"))
			{
				session.invalidate();
				response.sendRedirect("./outside/mainpage2.jsp");
				return;
			}
			else
			{
				System.out.println("else");
				
			}
		}else {
			
		}
		
	}
}