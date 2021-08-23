package test.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import test.dev.service.CartService;




public class p_deleteController implements Controller{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String session_id=null;
		String product=null;
		
		
		HttpSession session = req.getSession();
		 
		 session_id = (String) session.getAttribute("session_id");
		 product = req.getParameter("product");
		 
		 CartService service3 = CartService.getInstance();
		 service3.p_delete(session_id,product);
	 

	
		 
		 HttpUtil.forward(req, resp, "cartList.do");
		
	}

}
