package test.dev.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import test.dev.service.MemberService;
import test.dev.vo.MemberVO;

public class MemberSearchController implements Controller {
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String id = request.getParameter("id");
		String job = request.getParameter("job");

		String path = null;
		if (job.equals("search"))
			path = "/memberSearch.jsp";
		else if (job.equals("update"))
			path = "/memberUpdate.jsp";
		else if (job.equals("delete"))
			path = "/memberDelete.jsp";	
		
		
		if (id.isEmpty()) {
			request.setAttribute("error", "ID를 입력해주시기 바랍니다!");
			HttpUtil.forward(request, response, path);
			return;
		}

	
		MemberService service = MemberService.getInstance();
		MemberVO person = service.memberSearch(id);


		
		if (person == null) request.setAttribute("result", "검색된 정보가 없습니다!");
		request.setAttribute("person", person);

		if(job.equals("search")) path="/result/memberSearchOutput.jsp";
		HttpUtil.forward(request, response, path);

	}
}

