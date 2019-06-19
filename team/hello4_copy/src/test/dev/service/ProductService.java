package test.dev.service;
import java.util.ArrayList;

import test.dev.dao.ProductDAO;
import test.dev.vo.ProductVO;
public class ProductService {
	private static ProductService service1 = new ProductService();
	public ProductDAO dao1 = ProductDAO.getInstance();
	
	public ProductService(){
	}

	public static ProductService getInstance() {
		return service1;
	}

	public void addProduct(ProductVO product) {
		dao1.addProduct(product);
	}
	public ArrayList<ProductVO> productList() {
		ArrayList<ProductVO> listOfProducts = dao1.productList();
		return listOfProducts;
	}
	public void productDelete(String productID) {
		dao1.productDelete(productID);
	}
	public ProductVO productSearch(String productID) {
		ProductVO product = dao1.productSearch(productID);
		return product;
	}
}
