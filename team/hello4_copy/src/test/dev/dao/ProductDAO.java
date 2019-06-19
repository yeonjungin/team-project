package test.dev.dao;

import java.sql.Connection;




import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import test.dev.vo.ProductVO;
public class ProductDAO {
	
	private static ProductDAO dao1=new ProductDAO();
	private ProductDAO() {}
	public static ProductDAO getInstance() {
		return dao1;
	}
	public Connection connect() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/test3?serverTimezone=UTC", "root", "cs1234");
		} catch (Exception ex) {
			System.out.println(ex);
		}
		return conn;
	}

	public void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception ex) {
				System.out.println(ex);			
			}
		}
		close(conn, ps);
	} // close

	public void close(Connection conn, PreparedStatement ps) {
		if (ps != null) {
			try {
				ps.close();
			} catch (Exception ex) {
				System.out.println(ex);				
			}
		}

		if (conn != null) {
			try {
				conn.close();
			} catch (Exception ex) {
				System.out.println(ex);			
			}
		}
	} // close

	
	public void addProduct(ProductVO product) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into product values(?,?,?,?,?,?)");
			pstmt.setString(1, product.getProductId());
			pstmt.setString(2, product.getPname());
			pstmt.setInt(3, product.getUnitPrice());
			pstmt.setString(4, product.getDescription());
			pstmt.setString(5, product.getFilename());
			pstmt.setString(6, product.getDivision());

			pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt);
		}
		
		
		
	}
	public ArrayList<ProductVO> productList() {

		ArrayList<ProductVO> listOfProducts = new ArrayList<ProductVO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ProductVO product = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from product");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				product = new ProductVO();
				product.setProductId(rs.getString(1));
				product.setPname(rs.getString(2));
				product.setUnitPrice(rs.getInt(3));
				product.setDescription(rs.getString(4));
				product.setFilename(rs.getString(5));
				product.setDivision(rs.getString(6));


				listOfProducts.add(product);
			}

		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt, rs);
		}

		return listOfProducts;
	}
	public ProductVO productSearch(String productID) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductVO product = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from product where P_ID=?");
			pstmt.setString(1,productID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				product = new ProductVO();
				product.setProductId(rs.getString(1));
				product.setPname(rs.getString(2));
				product.setUnitPrice(rs.getInt(3));
				product.setDescription(rs.getString(4));
				product.setFilename(rs.getString(5));
				product.setDivision(rs.getString(6));

			}

		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt, rs);
		}

		return product;
	}
	public void productDelete(String productId){
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("delete from product where P_ID=?");
			pstmt.setString(1, productId);
			pstmt.executeUpdate();

		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt);
		}
	}
	public ProductVO getProductById(String productId) {
		ProductVO productById = null;
		ArrayList<ProductVO> listOfProducts = productList();
		for (int i = 0; i < listOfProducts.size(); i++) {
			ProductVO product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
		
		
	}
	public ArrayList<ProductVO> getAllProducts() {
		ArrayList<ProductVO> listOfProducts = new ArrayList<ProductVO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ProductVO product = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from product");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				product = new ProductVO();
				product.setProductId(rs.getString(1));
				product.setPname(rs.getString(2));
				product.setUnitPrice(rs.getInt(3));
				product.setDescription(rs.getString(4));
				product.setFilename(rs.getString(5));
				product.setDivision(rs.getString(6));

				listOfProducts.add(product);
			}

		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt, rs);
		}

		return listOfProducts;
	}
	
	
	

}
