<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="test.dev.vo.ProductVO"%>
<%@ page import="test.dev.dao.ProductDAO"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <script src="./js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
 	
    </script>
    <meta charset="utf-8">

	<title>용용전자</title>
    <!-- Origin - mainPage.html -->
	<link rel="stylesheet" href="./css/default2.css">
	<link rel="stylesheet" href="./css/index.css">
	<link rel="stylesheet" href="./css/slide.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <link rel="stylesheet" href="./css/best.css">
    <link rel="stylesheet" href="css/style1.css">
    <!--media : 연결 문서가 표시될 장치 또는 미디어유형
    screen은 컴퓨터화면,태블릿,스마트폰 화면 -->
    <link rel="stylesheet" href="css/fractionslider.css">
    <!-- fractionslider 슬라이드 애니메이션 효과 적용하는 css -->
    <link rel="stylesheet" href="css/style-fraction.css">
    <!-- style-fraction.css는 메인 페이지 슬라이드 전체 스타일 적용-->
    <link rel="stylesheet" href="css/animate.css"/>
    <!--link rel="stylesheet" href="css/magnified.css"/-->

    <link rel="stylesheet" href="css/search.css"/>
        <link rel="stylesheet" href="css/style.css"/>

    <!--link rel="stylesheet" href="css/magnified.css"/-->

    <!-- Origin - /contents/index.html -->
    <link rel="stylesheet" href="../contents/assets/css/main.css" />
    
    <script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			
			document.addForm.submit();
			
		} else {		
			document.addForm.reset();
		}
	}
	function login(){
		confirm("로그인을 해주세요!");
	}
	</script>
    <script src="../contents/assets/js/jquery.poptrox.min.js"></script>
    <script src="../contents/assets/js/jquery.scrolly.min.js"></script>
    <script src="../contents/assets/js/skel.min.js"></script>
    <script src="../contents/assets/js/util.js"></script>
    <script src="../contents/assets/js/main.js"></script>
    <style>
    .form-group row input {width:1vw}
    </style>
  </head>
<body class="home">
   <div id="event" style="margin-bottom:-1vw; width:auto">
             <a href="#"><img src="images/toppopup.jpg" width="auto" height="auto" ></a>
        </div>
    <!--Start mainPage.html-->
    <header id="header">
     
    
        <div id="top-bar">

            <div class="container">
             <a href="./outside/mainpage2.jsp"><h3 style="color:white; width:15vw;font-size:2.7vw;  margin-left:-3vw; margin-top:2.8vw">용용전자</h3></a>
                
                <div id="right_up_menubar" style="margin-top:-2vw; margin-left:18vw">
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
    <input type="checkbox" id="spinner-form" />
    <label for="spinner-form" class="spinner-spin">
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
  
</div></div>

 
 <%
		String L_ID = (String)session.getAttribute("session_id");
		if(session!=null && session.getAttribute("session_id")!=null){
			
		}
		%>
		<section style="margin-bottom:20vw">
    
   
     <div style="display:inline-block">
		<div style="display:inline-block;">
		<%
		String id = request.getParameter("id");
		String division = request.getParameter("division");
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test3?serverTimezone=UTC", "root", "cs1234");
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String sql="select * from product where P_ID=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);
			//pstmt.setString(2,division);

			rs=pstmt.executeQuery();
			if(rs.next()){		
		%>
			<div style="width:30vw;display:inline-block; margin:1.2vw; text-align:center">
			<img src="images/pro/<%=rs.getString("P_FILENAME")%>" style="margin-left:16vw; margin-top:3vw; width:28vw;">
			</div>
		<%} %>
		
	</div></div>
	<div style="width:10vw; margin-left:52vw; margin-top:8vw">
	<h3 style="margin-top:-35vw">상품 명 : </h3> <h3 style="color:black; margin-top:-3vw; margin-left:7vw; width:20vw"><%=rs.getString("P_NAME")%></h3>
	<h3 style="margin-top:0vw">가격  :</h3> <h3 style="color:black; margin-top:-3vw; margin-left:7vw; width:20vw"><%=rs.getInt("P_UNITPRICE")%></h3> 
	<h3 style="margin-top:0vw">상세설명  :</h3> <h3 style="color:black; margin-top:-3vw; margin-left:7vw; width:30vw; margin-bottom:3vw"><%=rs.getString("P_DESCRIPTION")%></h3> 
	
	 
     	<form name="addForm" action="cartInsert.do" method="post">
    <input type="hidden" name="L_ID" value="<%=session.getAttribute("session_id")%>" />
	<input type="hidden" name="C_ID" value="<%=rs.getString("P_ID")%>" />
	<input type="hidden" name="C_NAME" value="<%=rs.getString("P_NAME")%>" />
	<input type="hidden" name="C_UNITPRICE" value="<%=rs.getString("P_UNITPRICE")%>" />
	<input type="hidden" name="C_FILENAME" value="<%=rs.getString("P_FILENAME")%>" />
	<div style="width:20vw; margin-top:3vw; font-size:1.2vw; font-weight:bold">수량 :<input style="border:2px solid purple ;width:8vw; height:2vw; margin-top:-1.5vw; margin-left:9vw; margin-bottom:3vw" type="text" name="C_COUNT"/> 
	</div>
	<% if(session.getAttribute("session_id")!=null) { %>
	<p><a href="#" onclick="addToCart()" class="btn btn-info"style="background-color:#440B65; border:1px solid #440B65"> 장바구니 &raquo;</a> <br></p>
	<%} else{%>
	<p><a href="#" onclick="login()" class="btn btn-info"style="background-color:#440B65; border:1px solid #440B65"> 장바구니 &raquo;</a> <br></p>
	<%} %>
	<p><a href="productList.jsp" style="background-color:#7A0B23; margin-top:-6.0vw; margin-left:6.8vw"class="btn btn-secondary"> 상품 목록 &raquo;</a></p>
	
	</form>

	</div>
	
	
  </section>

 
 
 
 
 
 
 
 
 
 
 
 
 
 
	<footer class="footer">
        <div class="container">
            <div class="row">
        

               <div class="col-sm-8 col-md-3 col-lg-3">
                    <div class="widget_title">
                        <h4><span><strong>Connector</strong></span></h4>
                    </div>
                    <div class="widget_content">
                        <p> Open/ am 11:00 ~ pm 5:00 <br> Lunch/ pm 1:00 ~ pm 2:00<br> Sat,Sun,Holiday Closed <br> &nbsp;</p>

                    </div>
                </div>

                <div class="col-sm-7 col-md-3 col-lg-3">
                    <div class="widget_title">
                        <h4><span><strong>Bank Account</strong></span></h4>
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
                        <h4><span><strong>Company info</strong></span></h4>
                    </div>
                    <div class="widget_content">

                          <div class="widget_content">
                       <ul class="contact-details-alt">
                            <li> <p><i class="fa fa-map-marker"></i><strong>Address</strong>: </p></li>
                            <li> <p><i class="fa fa-user"></i><strong>Phone</strong>:(+82)0321-123-4567</p></li>
                            <li> <p><i class="fa fa-envelope"></i><strong>Email</strong>:@naver.com</p></li>
                        </ul>
                    </div>
                    </div>
                </div>
                <div class="col-sm-7 col-md-3 col-lg-3">
                    <div class="widget_title">
                        <h4><span><strong>Delivery</strong></span></h4>
                    </div>
                    <div class="widget_content">
                       <ul class="links">
                            <li><a href="https://www.doortodoor.co.kr/parcel/pa_004.jsp">CJ 대한통운 : 1588-1255</a></li>

                        </ul>

                    </div>
        </div>
        <div class="col-sm-7 col-md-3 col-lg-3">
                    <div class="widget_title">
                        <h4><span><strong>Return Address</strong></span></h4>
                    </div>
                    <div class="widget_content">
                       <ul class="links">
                            <li>경기도
                                 </li>
                                 <li style="color:gray"><strong>
                                    (반품전 반드시 고객센터로 연락주세요)</strong>
                                 </li>

                        </ul>

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
                <p class="copyright">&copy;Copyright 2019 Electrify </a></p>
                <!--&copy;는 copy의 로고 c를 의미 -->
            </div>


            </div>
        </div>
     
    </section>
     <script>
    $('ul li:has(ul)').addClass('has-submenu');
$('ul li ul').addClass('sub-menu');
$('ul.dropdown li').hover(function () {
    $(this).addClass('hover');
}, function () {
    $(this).removeClass('hover');
});
var $menu = $('#menu'), $menulink = $('#spinner-form'), $search = $('#search'), $search_box = $('.search_box'), $menuTrigger = $('.has-submenu > a');
$menulink.click(function (e) {
    $menulink.toggleClass('active');
    $menu.toggleClass('active');
    if ($search.hasClass('active')) {
        $('.menu.active').css('padding-top', '50px');
    }
});
$search.click(function (e) {
    e.preventDefault();
    $search_box.toggleClass('active');
});
$menuTrigger.click(function (e) {
    e.preventDefault();
    var t = $(this);
    t.toggleClass('active').next('ul').toggleClass('active');
});
$('ul li:has(ul)');

   </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="./js/jquery.fractionslider.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="./js/jquery.smartmenus.bootstrap.min.js"></script>
    <script type="text/javascript" src="./js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="./js/jquery-scrolltofixed-min.js"></script>
     <script src="js/main.js"></script>
    
</body>
</html>
  