<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>	
<%@ page import="test.dev.dao.BbsDAO" %>	
<%@ page import="test.dev.vo.Bbs" %>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript"></script>
    <meta charset="utf-8">
	<link rel="stylesheet" href="css/default2.css">
	<link rel="stylesheet" href="css/index.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/best.css">
    <link rel="stylesheet" href="css/style1.css">
    <link rel="stylesheet" href="css/search.css"/>
    <link rel="stylesheet" href="css/style.css"/> <!-- 메뉴바 -->
<title>JSP 게시판 만들기</title>
</head>
<body>
	<!-- 로그인이 된 사람들의 세션을 만들어 준다. 회원값이 있는 사람들은 userID에 정보가 담기게 되고 아닌 사람은 null값을 가지게 된다.	-->
	<%
		String userID = null;
		if(session.getAttribute("session_id") != null){
			userID = (String) session.getAttribute("session_id");
		}

		if(userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = ./Login.jsp'");
			script.println("</script>");	
		}

		int bbsID = 0 ;

		if(request.getParameter("bbsID") != null){
			bbsID = Integer.parseInt(request.getParameter("bbsID"));
		}
		if(bbsID == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('유효하지 않은 글입니다..')");
			script.println("location.href = BBs.jsp'");
			script.println("</script>");
		}
		
		Bbs bbs = new BbsDAO().getBbs(bbsID);
		if(!userID.equals(bbs.getUserID())){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('권한이 없습니다.')");
			script.println("location.href = BBs.jsp'");
			script.println("</script>");
		}
	%>
	
	<!-- header -->
	<jsp:include page="header.jsp"/>
	<div class="container" style="margin-top: 50px;" >
		 <div class="row">
		 	<form method="post" action="updateAction.jsp?bbsID=<%= bbsID %>">
			 	<table class="table table-striped" style="text-align:center; border:1px solid #dddddd;">
			 		<thead>
						<tr>
							<th colspan="1" style="background-color:#eeeeee; text-align: center;">게시판 글 수정 양식</th>
							</tr>		 		
						 	</thead>
							<tbody>
			 				<tr>
			 				<td><input type="text" class="form-control" placeholder="글제목" name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle() %>"></td>
			 				</tr>
				 			<tr>	
			 				<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height:350px"><%= bbs.getBbsContent() %></textarea> </td>
			 			</tr>	
			 		</tbody>
				 	</table>
				 	<input type="submit" class="btn btn-primary pull-right" value="글수정" style="color: #fff; font-size: 16px;">
					</form>
			 </div>
			</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
	<script src="js/bootstrap.min.js"></script> 
	<!-- footer -->
	<jsp:include page="footer.jsp"/>
</body>
</html>
