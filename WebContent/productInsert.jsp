<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
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
             <a href="./outside/mainpage2.jsp"><h3 style="color:white; width:15vw;font-size:2.7vw;  margin-top:2.3vw">용용전자</h3></a>
                
                <div id="right_up_menubar" style="margin-top:-2vw">
                     <% if(session.getAttribute("session_id")!=null) {  %>
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
<div style="border:1px dotted #4E0379; text-align:center; width:50vw; margin-left:26vw; margin-bottom:4vw; margin-top:4vw">
	  <h3 style="font-size:2.3vw; margin-bottom:2vw; margin-top:3vw; height:auto ">* 상품 등록 * </h3><br>
	
		<form action="productAdd.do" method="post"  >
			<div class="form-group row" style="margin-top:3vw; width:80vw">
				<label class="col-sm-2">상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="productId" class="form-control" >
				</div>
			</div>
			<div class="form-group row" style="margin-top:3vw; width:80vw">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="pname" class="form-control" >
				</div>
			</div>
			<div class="form-group row" style="margin-top:3vw; width:80vw">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control" >
				</div>
			</div>
			<div class="form-group row" style="margin-top:3vw; width:80vw">
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row" style="margin-top:3vw; width:80vw">
				<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="filename" class="form-control" >
				</div>
			</div>
			<div class="form-group row" style="margin-top:3vw; width:80vw">
				<label  class="col-sm-2">상품 분류</label>
				<h4 style="margin-left:13vw; width:5vw ">TV/AV</h4> <input type="radio" style="margin-left:18.5vw; margin-top:-3.7vw; width:1vw" name="division" value="TV">
				<h4 style="margin-left:13vw; width:5vw">PC</h4> <input type="radio" style="margin-left:18.5vw; margin-top:-3.7vw; width:1vw" name="division" value="PC">
				<h4 style="margin-left:13vw; width:5vw">주방가전</h4> <input type="radio" style="margin-left:18.5vw; margin-top:-3.7vw; width:1vw" name="division" value="KIC">
				<h4 style="margin-left:13vw; width:5vw">에어컨</h4> <input type="radio" style="margin-left:18.5vw; margin-top:-3.7vw; width:1vw" name="division" value="AIR">
				<h4 style="margin-left:13vw; width:5vw">모바일</h4> <input type="radio" style="margin-left:18.5vw; margin-top:-3.7vw; width:1vw" name="division" value="MOB">
				
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" style="background-color:#BD93C0; border:2px solid #BD93C0; margin-left:13vw; width:6vw;border:1px solid #F69EB4" value="등록" >
				</div>
			</div>
		</form>
	</div>
 
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
  