package test.dev.dao;

import java.sql.*;
import java.util.ArrayList;

import test.dev.vo.MemberVO;

public class MemberDAO {

	private static MemberDAO dao = new MemberDAO();
	private MemberDAO(){}

	public static MemberDAO getInstance() {
		return dao;
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

	public void memberInsert(MemberVO person) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into person values(?,?,?,?)");
			pstmt.setString(1, person.getId());
			pstmt.setString(2, person.getPasswd());
			pstmt.setString(3, person.getName());
			pstmt.setString(4, person.getMail());
			pstmt.executeUpdate();
		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt);
		}
	}

	public MemberVO memberSearch(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		MemberVO person = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from person where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				person = new MemberVO(null,null,null,null);
				person.setId(rs.getString(1));
				person.setPasswd(rs.getString(2));
				person.setName(rs.getString(3));
				person.setMail(rs.getString(4));
			}

		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt, rs);
		}

		return person;
	}

	public void memberUpdate(MemberVO person) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("update person set passwd=?,name=?,mail=? where id=?");
			pstmt.setString(1, person.getPasswd());
			pstmt.setString(2, person.getName());
			pstmt.setString(3, person.getMail());
			pstmt.setString(4, person.getId());
			pstmt.executeUpdate();

		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt);
		}

	}

	public void memberDelete(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("delete from person where id=?");
			pstmt.setString(1, id);
			pstmt.executeUpdate();

		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt);
		}
	}

	public ArrayList<MemberVO> memberList() {

		ArrayList<MemberVO> blist = new ArrayList<MemberVO>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		MemberVO person = null;

		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from person");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				person = new MemberVO(null,null,null,null);
				person.setId(rs.getString(1));
				person.setPasswd(rs.getString(2));
				person.setName(rs.getString(3));
				person.setMail(rs.getString(4));
				blist.add(person);
			}

		} catch (Exception ex) {
			System.out.println(ex);
		} finally {
			close(conn, pstmt, rs);
		}

		return blist;
	}
	
	public int memberLogin(MemberVO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int check=8;
		String dbpw = null;
		
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select passwd from person where id =?");
			pstmt.setString(1,member.getId());
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{	
				
				dbpw = rs.getString("passwd");
				
				if (dbpw.equals(member.getPasswd())) 
				{ 
					check = 1; 
				}
				else 
				{                  
					check = 0; 
				}

			}else 
			{
				check = -1; 
			}
			
		}catch(Exception e)
			{
				e.printStackTrace();
			}
		return check;
		
		}

	public String memberRegister(MemberVO member) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String error="";

		
		try {
		conn = connect();
		pstmt = conn.prepareStatement("select id from person where id=?");
		pstmt.setString(1,member.getId());
		rs = pstmt.executeQuery();
		
		if(rs.next())
		{
			error = "IDerror";
			
			rs.close();
			pstmt.close();
			conn.close();
		
			
		}
		else
		{
			
			pstmt = conn.prepareStatement("insert into person values(?,?,?,?)");
			pstmt.setString(1,member.getId());
			pstmt.setString(2,member.getPasswd());
			pstmt.setString(3,member.getName());
			pstmt.setString(4,member.getMail());
			
			pstmt.executeUpdate();
			error = "Register Success!";
			
			
			rs.close();
			pstmt.close();
			conn.close();
			
		
			
		}
	
		}catch(Exception e)
		{
			e.printStackTrace();
		}//catch
		
		
		return error;
		
		
	}//memberRegister
	



}
