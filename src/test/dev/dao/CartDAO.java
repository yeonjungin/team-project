package test.dev.dao;

import java.sql.Connection;


import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import test.dev.vo.CartVO;


public class CartDAO {
	private static CartDAO dao3 = new CartDAO();
	private CartDAO(){}

	public static CartDAO getInstance() {
		return dao3;
	}

	public Connection connect() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/test3?serverTimezone=UTC", "root", "cs1234");
		} catch (Exception ex) {
			System.out.println("���� �߻� : " + ex);
		}
		return conn;
	}

	public void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception ex) {
				System.out.println("���� �߻� : " + ex);				
			}
		}
		close(conn, ps);
	} // close

	public void close(Connection conn, PreparedStatement ps) {
		if (ps != null) {
			try {
				ps.close();
			} catch (Exception ex) {
				System.out.println("���� �߻� : " + ex);				
			}
		}

		if (conn != null) {
			try {
				conn.close();
			} catch (Exception ex) {
				System.out.println("���� �߻� : " + ex);				
			}
		}
	} // close
			
	public void CartInsert(CartVO cart) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into cart values(?,?,?,?,?,?)");
			pstmt.setString(1, cart.getLID());
			pstmt.setString(2, cart.getCID());
			pstmt.setString(3, cart.getCNAME());
			pstmt.setInt(4, cart.getUNITPRICE());
			pstmt.setString(5, cart.getFILENAME());
			pstmt.setInt(6, cart.getCOUNT());
			pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println("���� �߻� : " + ex);
		} finally {
			close(conn, pstmt);
		}
	}
	public ArrayList<CartVO> cartList(String session_id) {

		ArrayList<CartVO> listOfCarts = new ArrayList<CartVO>();
		String sql = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		CartVO cart = null;

		try {
			conn = connect();
			
			sql="select * from cart where L_ID='"+session_id+"';";
			
			
			
			pstmt = conn.prepareStatement(sql);		
			rs=pstmt.executeQuery(sql);
			while (rs.next()) {
				cart = new CartVO();
				cart.setLID(rs.getString(1));
				cart.setCID(rs.getString(2));
				cart.setCNAME(rs.getString(3));
				cart.setUNITPRICE(rs.getInt(4));
				cart.setFILENAME(rs.getString(5));
				cart.setCOUNT(rs.getInt(6));

				listOfCarts.add(cart);
			}

		} catch (Exception ex) {
			System.out.println("���� �߻� : " + ex);
		} finally {
			close(conn, pstmt, rs);
		}

		return listOfCarts;
	}
	public CartVO cartSearch(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		CartVO cart = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from cart where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cart = new CartVO();
				cart.setLID(rs.getString(1));
				cart.setCID(rs.getString(2));
				cart.setCNAME(rs.getString(3));
				cart.setUNITPRICE(rs.getInt(4));
				cart.setFILENAME(rs.getString(5));
				cart.setCOUNT(rs.getInt(6));
			}

		} catch (Exception ex) {
			System.out.println("���� �߻� : " + ex);
		} finally {
			close(conn, pstmt, rs);
		}

		return cart;
	}
	public void CartDelete(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("delete from cart where C_ID=?");
			pstmt.setString(1, id);
			pstmt.executeUpdate();

		} catch (Exception ex) {
			System.out.println("���� �߻� : " + ex);
		} finally {
			close(conn, pstmt);
		}
	}

	public void p_delete(String session_id, String product) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;

		
		try {
		conn = connect();
		
		sql="delete from cart"
		+" where L_ID='"+session_id
		+"' AND C_NAME="
		+"'"+product+"';";
		
		
		pstmt = conn.prepareStatement(sql);		

		pstmt.execute(sql);
		

		
		
		
	
		}catch(Exception e)
		{
			System.out.println("����:"+e);
			System.out.println(sql);
		}//catch
		
		
	}
}//Ŭ����

