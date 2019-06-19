package test.dev.controller;

import java.io.*;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.http.*;

import test.dev.service.MemberService;
import test.dev.vo.MemberVO;

public class MemberListController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberService service = MemberService.getInstance();
		ArrayList<MemberVO> blist = service.memberList();

		request.setAttribute("blist", blist);
		HttpUtil.forward(request, response, "/result/memberListOutput.jsp");
	}
}
