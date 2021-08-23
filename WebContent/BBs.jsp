<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>	
<%@ page import="test.dev.dao.BbsDAO" %>	
<%@ page import="test.dev.vo.Bbs" %>	
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>JSP 게시판 만들기</title>
<link rel="shortcut icon" href="favicon.ico">
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" href="css/default2.css">
<!--header css-->
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/style1.css">
<!--media : 연결 문서가 표시될 장치 또는 미디어유형
      screen은 컴퓨터화면,태블릿,스마트폰 화면 -->

<!-- Origin - /contents/index.html -->
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" />

</head>
<body>
	<!--위쪽 시작-->
	 <div id="event" style="margin-bottom:-1vw; width:auto">
             <a href="#"><img src="images/toppopup.jpg" width="1390vw" height="auto" ></a>
        </div>
	<!--Start mainPage.html-->
	<header id="header">
		<div id="top-bar">
		
			<div class="container">
			  <a href="./outside/mainpage2.jsp" style="text-decoration:none"><h3 style="color:white; width:15vw;font-size:2.7vw;  margin-top:2.3vw; margin-left:-2vw">용용전자</h3></a>
				<div id="right_up_menubar"  style="margin-top:-2vw; margin-left:18vw">
					
					<%
                     
                     String session_id = (String)session.getAttribute("session_id");
                     
                     if(session.getAttribute("session_id")!=null) {  %>
                           ${session_id}님 환영합니다.
                           <span><a href="memberLogout.do">Logout</a></span>
                           <%if(session.getAttribute("session_id").equals("admin")) {
                        	  %><span><a href="admin.jsp">관리자 페이지</a></span>
                           <%}else{ %>
                           <%} %>
                           <%}else{ %>
                           <span><a href="Login.jsp">Login</a></span>
                            <%} %>                       
                           <%if(session.getAttribute("session_id")==null) { %>
                           
                           <span><a href="Register.jsp">Join</a></span>
                           <%}else{ %>
                           <span><a href="cartList.do">Cart</a></span>
                           <%   } %>
				</div>
			</div>
		</div>
		<!--Google -Fonts-->
	</header>
	<div>
		<div class="nav_wrapper">
			<!--<a class="menu-link" href="#menu"></a>-->
			<div class="spinner-master">
				<input type="checkbox" id="spinner-form" /> <label
					for="spinner-form" class="spinner-spin">
					<div class="spinner diagonal part-1"></div>
					<div class="spinner horizontal"></div>
					<div class="spinner diagonal part-2"></div>
				</label>
			</div>
			<nav id="menu" class="menu">
    <ul class="dropdown">
      <li ><a href="#Link" title="Link">TV/AV</a>
        <ul >
          <li ><a href="TV.jsp" title="Link">TV </a>
            
          </li>
          <li ><a href="#Link" title="Link">프로젝터</a></li>
          <li ><a href="#Link" title="Link">AV </a>
            
          </li>
        </ul>
      </li>
      <li ><a href="#Link" title="Link">PC</a>
        <ul >
          <li ><a href="PC.jsp" title="Link ">노트북</a></li>
          <li ><a href="#Link" title="Link">일체형PC</a>
          </li>
          <li ><a href="#Link" title="Link">데스크톱</a>
          </li>
            <li ><a href="#Link" title="Link">모니터</a></li>
        </ul>
      </li>
      <li ><a href="#Link" title="Link">주방가전</a>
        <ul >
          <li ><a href="KIC.jsp" title="Link">냉장고</a></li>
          <li ><a href="#Link" title="Link">김치냉장고</a></li>
          <li ><a href="#Link" title="Link">전자레인지</a></li>
        </ul>
      </li>
      <li ><a href="#Link" title="Link">에어컨</a>
        <ul >
          <li ><a href="#Link" title="Link">에어컨</a></li>
          <li ><a href="#Link" title="Link">공기청정기</a></li>
          <li ><a href="#Link" title="Link">제습기</a></li>
          <li ><a href="#Link" title=" Link"> 가습기</a></li>
        </ul>
      </li>
       <li ><a href="#Link" title="Link">모바일</a>
        <ul >
          <li ><a href="#Link" title="Link">스마트폰 </a></li>
          <li ><a href="#Link" title="Link">태블릿</a></li>
        </ul>
      </li>
      <li ><a href="./BBs.jsp" title="Link">게시판</a></li>
    </ul>  
  </nav>
		</div>
	</div>
	<!--위쪽 끝-->

<!-- 로그인이 된 사람들의 세션을 만들어 준다. 회원값이 있는 사람들은 userID에 정보가 담기게 되고 아닌 사람은 null값을 가지게 된다.	 -->

	<%
		String userID = null;
		if(session.getAttribute("session_id") != null){
			userID = (String) session.getAttribute("session_id");
		}
		
		int pageNumber = 1;

		if(request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>

	<div class="container" style="margin-top: 40px";>
		 <div class="row">
		 	<table class="table table-striped" style="text-align:center; border:1px; solid #dddddd">
		 		<thead>
					<tr>
						<th style="background-color:#E3CEF6; text-align: center;">번호</th>
						<th style="background-color:#E3CEF6; text-align: center;">제목</th>
						<th style="background-color:#E3CEF6; text-align: center;">작성자</th>
						<th style="background-color:#E3CEF6; text-align: center;">작성일</th>
					</tr>		 		
		 		</thead>
		 		<tbody>
		 			<%
		 				BbsDAO bbsDAO = new BbsDAO();
		 				ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
		 				for(int i=0; i < list.size(); i++){
		 			%>
		 			<tr>
		 				<td><%= list.get(i).getRnum() %></td>
		 				<td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle() %></a></td>
		 				<td><%= list.get(i).getUserID() %></td>
		 				<td><%=list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) +  "분" %></td>
		 			</tr>	
		 			<%		
		 				}
		 			%>
		 		</tbody>
		 	</table>
		 	<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		 </div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	
	<script src="js/bootstrap.min.js"></script> 
	
	
	<!--start footer-->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span><strong>Connector</strong></span>
						</h4>
					</div>
					<div class="widget_content">
						<p>
							Open/ am 11:00 ~ pm 5:00 <br> Lunch/ pm 1:00 ~ pm 2:00<br>
							Sat,Sun,Holiday Closed <br> &nbsp;
						</p>
					</div>
				</div>
				<div class="col-sm-7 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span><strong>Bank Account</strong></span>
						</h4>
					</div>
					<div class="widget_content">
						<ul class="links">
							<li>농협 : 130044-56-158300</li>
							<li>국민 : 94941891253</li>
							<li>신한 : 123123-456456</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-7 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span><strong>Company info</strong></span>
						</h4>
					</div>
					<div class="widget_content">
						<div class="widget_content">
							<ul class="contact-details-alt">
								<li>
									<p>
										<i class="fa fa-map-marker"></i><strong>Address</strong>:
									</p>
								</li>
								<li>
									<p>
										<i class="fa fa-user"></i><strong>Phone</strong>:(+82)0321-123-4567
									</p>
								</li>
								<li>
									<p>
										<i class="fa fa-envelope"></i><strong>Email</strong>:@naver.com
									</p>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-7 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span><strong>Delivery</strong></span>
						</h4>
					</div>
					<div class="widget_content">
						<ul class="links">
							<li><a href="https://www.doortodoor.co.kr/parcel/pa_004.jsp">CJ
									대한통운 : 1588-1255</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-7 col-md-3 col-lg-3">
					<div class="widget_title">
						<h4>
							<span><strong>Return Address</strong></span>
						</h4>
					</div>
					<div class="widget_content">
						<ul class="links">
							<li>경기도</li>
							<li style="color: gray"><strong> (반품전 반드시 고객센터로 연락주세요.)</strong></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!--end footer-->
	<section class="footer_bottom">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<p class="copyright">
						&copy;Copyright 2019 Electrify </a>
					</p>
					<!--&copy;는 copy의 로고 c를 의미 -->
				</div>
			</div>
		</div>
	</div>
	</section>
</body>
</html>