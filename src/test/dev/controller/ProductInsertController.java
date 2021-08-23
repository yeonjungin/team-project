package test.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dev.service.ProductService;
import test.dev.vo.ProductVO;

public class ProductInsertController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String productId = request.getParameter("productId");
		String pname = request.getParameter("pname");
		String price = request.getParameter("unitPrice");
		Integer unitPrice;
		if (price.isEmpty())
			unitPrice = 0;
		else
			unitPrice = Integer.valueOf(price);
		String description = request.getParameter("description");
		String filename = request.getParameter("filename");
		String division=request.getParameter("division");
	

	
		ProductVO product = new ProductVO();
		product.setProductId(productId);
		product.setPname(pname);
		product.setUnitPrice(unitPrice);
		product.setDescription(description);
		product.setFilename(filename);
		product.setDivision(division);



		
		ProductService service1 = ProductService.getInstance();
		service1.addProduct(product);

		
		request.setAttribute("pname", pname);
		HttpUtil.forward(request, response, "/result/addProductOutput.jsp");
	}
}