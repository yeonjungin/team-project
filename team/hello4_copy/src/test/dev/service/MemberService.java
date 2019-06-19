package test.dev.service;

import java.util.ArrayList;

import test.dev.dao.MemberDAO;
import test.dev.vo.MemberVO;

public class MemberService {

	private static MemberService service = new MemberService();
	public MemberDAO dao = MemberDAO.getInstance();
	
	public MemberService(){
	}

	public static MemberService getInstance() {
		return service;
	}

	public void memberInsert(MemberVO person) {
		dao.memberInsert(person);
	}

	public MemberVO memberSearch(String id) {
		MemberVO person = dao.memberSearch(id);
		return person;
	}
	/*public MemberVO memberLogin(String id) {
		MemberVO member = dao.memberLogin(id);
		return member;
	}*/

	public void memberUpdate(MemberVO person) {
		dao.memberUpdate(person);
	}

	public void memberDelete(String id) {
		dao.memberDelete(id);
	}

	public ArrayList<MemberVO> memberList() {
		ArrayList<MemberVO> list = dao.memberList();
		return list;
	}
	

	public int memberLogin(MemberVO member) {
		int check = dao.memberLogin(member);
		return check;
	}

	public String memberRegister(MemberVO member) {
		String error = dao.memberRegister(member);
		return error;
	}


	
	
	
	
	
	
	
	
	
	

}
