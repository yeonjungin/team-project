package test.dev.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import test.dev.service.MemberService;
import test.dev.vo.MemberVO;

public class MemberUpdateController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String mail = request.getParameter("mail");


		if (id.isEmpty() || passwd.isEmpty() || name.isEmpty() || mail.isEmpty()) {
			request.setAttribute("error", "등록된 회원이 없습니다!");
			HttpUtil.forward(request, response, "/memberUpdate.jsp");
			return;
		}

		
		MemberVO member = new MemberVO(null,null,null,null);
		member.setId(id);
		member.setPasswd(passwd);
		member.setName(name);
		member.setMail(mail);

		
		MemberService service = MemberService.getInstance();
		service.memberUpdate(member);

		
		request.setAttribute("id", id);
		HttpUtil.forward(request, response, "/result/memberUpdateOutput.jsp");
	}
}
