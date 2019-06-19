package test.dev.controller;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dev.service.CartService;
import test.dev.vo.CartVO;


public class CartInsertController implements Controller{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String L_ID=request.getParameter("L_ID");
		String C_ID = request.getParameter("C_ID");
		String C_NAME = request.getParameter("C_NAME");
		String cprice = request.getParameter("C_UNITPRICE");
		
		String count=request.getParameter("C_COUNT");
		Integer C_UNITPRICE;
		if(cprice.isEmpty())
			C_UNITPRICE=0;

		else
			C_UNITPRICE=Integer.valueOf(cprice);
		String C_FILENAME = request.getParameter("C_FILENAME");
		Integer C_COUNT;
		if(count.isEmpty())
			C_COUNT=0;
		else
			C_COUNT=Integer.valueOf(count);
	
		CartVO cart = new CartVO();
		cart.setLID(L_ID);
		cart.setCID(C_ID);
		cart.setCNAME(C_NAME);
		cart.setUNITPRICE(C_UNITPRICE);
		cart.setFILENAME(C_FILENAME);
		cart.setCOUNT(C_COUNT);

		
		CartService service3 = CartService.getInstance();
		service3.CartInsert(cart);

		
		request.setAttribute("C_ID", C_ID);
		HttpUtil.forward(request, response, "./cartList.do");
	}
}
