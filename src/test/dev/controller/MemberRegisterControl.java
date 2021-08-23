package test.dev.controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import test.dev.service.MemberService;
import test.dev.vo.MemberVO;


public class MemberRegisterControl implements Controller{


	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("R_id");
		String pwd = req.getParameter("R_pwd");
		String mail = req.getParameter("R_mail");
		String phone = req.getParameter("R_phone");
		String error="";
		

		
	 
		MemberVO member = new MemberVO(id,pwd,mail,phone);
		
		MemberService service = MemberService.getInstance();
		
		 error = service.memberRegister(member);
		 
		if(error.equals("IDerror")) {
		 req.setAttribute("error", error);
		 HttpUtil.forward(req, resp, "./Register.jsp"); 
		 
		 return;
		}
		else
		{
			 HttpUtil.forward(req, resp, "./Login.jsp"); 
		}
	}

}
