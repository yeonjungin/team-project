package test.dev.controller;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dev.service.ProductService;
public class ProductDeleteController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String productId = request.getParameter("productId");

		
		ProductService service1 = ProductService.getInstance();
		service1.productDelete(productId);

		
		HttpUtil.forward(request, response, "/result/productDeleteOutput.jsp");

	}
}
