package test.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dev.service.ProductService;
import test.dev.vo.ProductVO;

public class ProductSearchController implements Controller{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String productId = request.getParameter("productId");
		String job1 = request.getParameter("job1");

		String path1 = null;
		if (job1.equals("psearch"))
			path1 = "/productSearch.jsp";
		else if (job1.equals("pdelete"))
			path1 = "/productDelete.jsp";	
			
		
	
		if (productId.isEmpty()) {
			request.setAttribute("error1", "상품명을 입력해주시기 바랍니다!");
			HttpUtil.forward(request, response, path1);
			return;
		}

		
		ProductService service1 = ProductService.getInstance();
		ProductVO product = service1.productSearch(productId);


		
		if (product == null) request.setAttribute("result1", "검색된 정보가 없습니다!");
		request.setAttribute("product", product);

		if(job1.equals("psearch")) path1="/result/productSearchOutput.jsp";
		HttpUtil.forward(request, response, path1);

	}
}
