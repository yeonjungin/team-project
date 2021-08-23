package test.dev.controller;

import java.io.*;


import javax.servlet.*;
import javax.servlet.http.*;

import test.dev.controller.HttpUtil;
import test.dev.service.MemberService;
import test.dev.vo.MemberVO;



public class MemberLoginController implements Controller {
	
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String id = req.getParameter("id");
		String pwd = req.getParameter("passwd");
		String job = req.getParameter("job");
		
		
		String path = null;
		if (job.equals("search"))
			path = "/memberSearch.jsp";
		else if (job.equals("update"))
			path = "/memberUpdate.jsp";
		else if (job.equals("delete"))
			path = "/memberDelete.jsp";
		else if (job.equals("login"))
			path = "/Login.jsp";

		int check= 0;			
		MemberVO member = new MemberVO(id,pwd,null,null);
				 
		
		 MemberService service = MemberService.getInstance();
		 check = service.memberLogin(member);
		 System.out.println(check);
		if(id.equals("admin") && pwd.equals("1234"))
		{
			HttpSession session = req.getSession();
			 session.setAttribute("session_id", id);
			 HttpUtil.forward(req, resp, "./admin.jsp"); 
		}
		else if(id.equals("admin"))
		{	
			 req.setAttribute("error", "(ADMIN)pwdError");
			 HttpUtil.forward(req, resp, "./Login.jsp");
		}else {
		
		 if(check == 1)
		 {	
		
			 HttpSession session = req.getSession();
			 session.setAttribute("session_id", id);
			 resp.sendRedirect("./outside/mainpage2.jsp");
			 
			 return;
			 
		 }
		 else if(check == 0)
		 {		
			 
			 
			 req.setAttribute("error", "pwdError");
			 HttpUtil.forward(req, resp, "./Login.jsp"); 
			 
			 return;
			 
		 }
		 else
		 {
			
			 
		
			 req.setAttribute("error", "There is no id in DB");
			 HttpUtil.forward(req, resp, "./Login.jsp"); 
			 
			 return;
			
		 }
		 
		 
		 
		 
		 
		 
		 
	}
		

	}

}