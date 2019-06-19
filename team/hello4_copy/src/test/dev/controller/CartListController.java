package test.dev.controller;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import test.dev.service.CartService;
import test.dev.vo.CartVO;
public class CartListController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String session_id=null;
		HttpSession session = request.getSession();
		 session_id = (String) session.getAttribute("session_id");
		 
		CartService service3 = CartService.getInstance();
		ArrayList<CartVO> listOfCarts = service3.cartList(session_id);
		
		
		
		

		request.setAttribute("listOfCarts", listOfCarts);
		HttpUtil.forward(request, response, "./cart.jsp");

	}
}