package test.dev.controller;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;



import java.util.*;

public class FrontController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	String charset = null;
	HashMap<String, Controller> blist = null;


	@Override
	public void init(ServletConfig sc) throws ServletException {

		charset = sc.getInitParameter("charset");


		blist = new HashMap<String, Controller>();
		
		blist.put("/memberSearch.do", new MemberSearchController());
		blist.put("/memberUpdate.do", new MemberUpdateController());
		blist.put("/memberDelete.do", new MemberDeleteController());
		blist.put("/memberList.do", new MemberListController());
		blist.put("/memberLogin.do", new MemberLoginController());
		blist.put("/memberLogout.do", new MemberLogoutController());
		blist.put("/productAdd.do", new ProductInsertController());
		blist.put("/productList.do", new ProductListController());
		blist.put("/productSearch.do", new ProductSearchController());
		blist.put("/productDelete.do", new ProductDeleteController());
		blist.put("/cartInsert.do", new CartInsertController());
		blist.put("/cartList.do", new CartListController());
		blist.put("/cartDelete.do", new CartDeleteController());
		blist.put("/p_delete.do", new p_deleteController());
		blist.put("/memberRegis.do", new MemberRegisterControl());//(key,value);

		
	}

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding(charset);
		
		String url = request.getRequestURI();
		String contextPath = request.getContextPath();
		String path = url.substring(contextPath.length());
		
		if(path.equals("/outside/memberLogout.do"))
		{
			path = "/memberLogout.do";
			HttpSession session = request.getSession();
			 session.setAttribute("logout", "1");
			 Controller subController = blist.get(path);
				
				System.out.println(path+"����� path");
				subController.execute(request, response);
		}
		else
		{	
			HttpSession session = request.getSession();
			 session.setAttribute("logout", "2");
			 Controller subController = blist.get(path);
				
				System.out.println(path+"���� path");
				subController.execute(request, response);
		}
		
		
	}
}
