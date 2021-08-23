package test.dev.service;
import java.util.ArrayList;

import test.dev.dao.CartDAO;
import test.dev.vo.CartVO;


public class CartService {

	private static CartService service3 = new CartService();
	public CartDAO dao3 = CartDAO.getInstance();
	
	public CartService(){
	}

	public static CartService getInstance() {
		return service3;
	}

	public void CartInsert(CartVO cart) {
		dao3.CartInsert(cart);
	}
	public ArrayList<CartVO> cartList(String session_id) {
		ArrayList<CartVO> listOfCarts = dao3.cartList(session_id);
		return listOfCarts;
	}
	public void CartDelete(String id) {
		dao3.CartDelete(id);
	}

	public void p_delete(String session_id, String product) {
		dao3.p_delete(session_id,product);
		
	}

}
