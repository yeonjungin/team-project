package test.dev.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dev.service.ProductService;
import test.dev.vo.ProductVO;

public class ProductListController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService service = ProductService.getInstance();
		ArrayList<ProductVO> listOfProducts = service.productList();

		request.setAttribute("listOfProducts", listOfProducts);
		HttpUtil.forward(request, response, "/result/productListOutput.jsp");

	}
}
