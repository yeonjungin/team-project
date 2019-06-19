package test.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dev.service.CartService;

public class CartDeleteController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id = request.getParameter("lang");

		
		CartService service3 = CartService.getInstance();
		service3.CartDelete(id);

		
		HttpUtil.forward(request, response, "cart.jsp");
	}

}
