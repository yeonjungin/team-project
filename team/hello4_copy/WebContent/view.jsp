<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>	
<%@ page import="test.dev.dao.BbsDAO" %>	
<%@ page import="test.dev.vo.Bbs" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
    <link rel="stylesheet" href="css/style.css"/> <!-- �޴��� -->
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("session_id") != null){
			userID = (String) session.getAttribute("session_id");
		}
		
		int bbsID=0;
		
		if(request.getParameter("bbsID") !=null){// �Ű������� �Ѿ�� bbsID�� �����Ѵٸ� 
			bbsID=Integer.parseInt(request.getParameter("bbsID"));
		}
		
		if(bbsID==0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('��ȿ���� ���� ���Դϴ�.')");
			script.println("location.href = 'BBs.jsp'");
			script.println("</script>");
		}
		
		Bbs bbs = new BbsDAO().getBbs(bbsID); // bbsID=!0�� ��, �ش� ���� ��ü���� ������ ������ �� �ֵ���
		%>

	<!-- header -->
	<jsp:include page="header.jsp"/>

	<div class="container" style="margin-top: 50px;">
		 <div class="row">
			 	<table class="table table-striped" style="text-align:center; border:1px; solid: #dddddd">
			 		<thead>
						<tr>
							<th colspan="3" style="background-color:#eeeeee; text-align: center;">�Խ��� �� ���� ���</th>
						</tr>		 		
			 		</thead>
			 		<tbody>
			 			<tr>
			 				<td style="width:20%;">�� ����</td>
			 				<td colspan="2"><%=bbs.getBbsTitle() %></td>
			 			</tr>
			 			<tr>
			 				<td>�ۼ���</td>
			 				<td colspan="2"><%=bbs.getUserID() %></td>
			 			</tr>
			 			<tr>
			 				<td>�ۼ�����</td>
			 				<td colspan="2"><%=bbs.getBbsDate().substring(0,11) + bbs.getBbsDate().substring(11, 13) + "��" + bbs.getBbsDate().substring(14, 16) +  "��" %></td>
			 			</tr>
			 			<tr>
			 				<td>����</td>
			 				<td colspan="2" style="min-height:200px; text-align:left;"><%=bbs.getBbsContent().replaceAll("","&nbsp;").replaceAll("\n", "<br>") %></td>
			 			</tr>
			 		</tbody>
			 	</table>
			 	<a href="BBs.jsp" class="btn btn-primary">���</a>
			 	<!--�ش� ���� �ۼ��ڰ� �����̶�� ���� ���� ������ �� �ֵ��� -->
			 	<%
			 		if(userID != null && userID.equals(bbs.getUserID())){
			 	%>
				  	<a href ="update.jsp?bbsID=<%= bbsID%>" class="btn btn-primary">����</a>
				  	<a href ="deleteAction.jsp?bbsID=<%= bbsID%>" class="btn btn-primary">����</a>
			 	<%
			 		}
			 	%>
			 
		 </div>
		 </div>

		<!-- footer -->
	<jsp:include page="footer.jsp"/>
	
</body>
</html>