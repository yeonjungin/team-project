<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="./css/style1.css">
    <!--media : 연결 문서가 표시될 장치 또는 미디어유형
    screen은 컴퓨터화면,태블릿,스마트폰 화면 -->
    <link rel="stylesheet" href="./css/fractionslider.css">
    <!-- fractionslider 슬라이드 애니메이션 효과 적용하는 css -->
    <link rel="stylesheet" href="./css/style-fraction.css">
    <!-- style-fraction.css는 메인 페이지 슬라이드 전체 스타일 적용-->
    <link rel="stylesheet" href="./css/animate.css"/>
    <!--link rel="stylesheet" href="css/magnified.css"/-->

    <link rel="stylesheet" href="./css/search.css"/>
        <link rel="stylesheet" href="./css/style.css"/>

    <!--link rel="stylesheet" href="css/magnified.css"/-->

    <!-- Origin - /contents/index.html -->
    <link rel="stylesheet" href="../contents/assets/css/main.css" />
    <script src="/contents/assets/js/jquery.poptrox.min.js"></script>
    <script src="/contents/assets/js/jquery.scrolly.min.js"></script>
    <script src="/contents/assets/js/skel.min.js"></script>
    <script src="/contents/assets/js/util.js"></script>
    <script src="/contents/assets/js/main.js"></script>

</head>


<style>

    .gallery > .content {display: flex; flex-wrap: wrap;}
    .gallery > .content > .media {width: 25%; transition: .5s ease;}
    .media img {width: 100%;}

    @media all and (max-width:1280px) {
        .gallery > .content {width: 80%; margin: 0px auto;}
        .gallery > .content > .media {width: 50%;}
    }
    @media all and (max-width:768px) {
        .gallery > .content > .media {width: 100%;}
    }

    div.media { margin-top: 0 !important ;}
    a.no-uline { text-decoration:none }
    

</style>

<body class="home">
   <div id="event" style="margin-bottom:-1vw; width:auto">
             <a href="#"><img src="images/toppopup.jpg" width="auto" height="auto" ></a>
        </div>
    <!--Start mainPage.html-->
    <header id="header">
     
    
        <div id="top-bar">
               
            <div class="container">
  <a href="#" style="text-decoration:none"><h3 style="color:white; width:15vw;font-size:2.7vw;  margin-top:2.3vw; margin-left:-3vw">용용전자</h3></a>
                  <div id="right_up_menubar" style="margin-top:-2vw">
                     
     						 <% if(session.getAttribute("session_id")!=null) {  %>
                           ${session_id}님 환영합니다.
                           <span><a href="memberLogout.do">Logout</a></span>
                           <%if(session.getAttribute("session_id").equals("admin")) {
                        	  %><span><a href="../admin.jsp">관리자 페이지</a></span>
                           <%}else{ %>
                           <%} %>
                           <%}else{ %>
                           <span><a href="../Login.jsp">Login</a></span>
                            <%} %>                       
                           <%if(session.getAttribute("session_id")==null) { %>
                           
                           <span><a href="../Register.jsp">Join</a></span>
                           <%}else{ %>
                           <span><a href="../cartList.do">Cart</a></span>
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
          <li ><a href="../TV.jsp" title="Link">TV </a>
            
          </li>
          <li ><a href="#Link" title="Link">프로젝터</a></li>
          <li ><a href="#Link" title="Link">AV </a>
            
          </li>
        </ul>
      </li>
      <li ><a href="#Link" title="Link">PC</a>
        <ul >
          <li ><a href="../PC.jsp" title="Link ">노트북</a></li>
          <li ><a href="#Link" title="Link">일체형PC</a>
          </li>
          <li ><a href="#Link" title="Link">데스크톱</a>
          </li>
            <li ><a href="#Link" title="Link">모니터</a></li>
        </ul>
      </li>
      <li ><a href="#Link" title="Link">주방가전</a>
        <ul >
          <li ><a href="../KIC.jsp" title="Link">냉장고</a></li>
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
     <li ><a href="../BBs.jsp" title="Link">게시판</a></li>
    </ul>
  </nav>
  <form class="search_box" id="search_box" action="/search/">
    <input name="search_criteria" placeholder="Search here" value="" type="text">
    <input class="search_icon" value="Search" type="submit">
  </form>
</div>
    </div>
<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script> 
<script src="/SRC2/remenu1/script.js"></script>
	<!--start wrapper-->
    <section class="wrapper" style="margin-top:0.7vw">
    <!--Start Slider-->
        <div class="slider-wrapper">
            <div class="slider">
                <div class="fs_loader"></div> <!-- 로딩 버튼  -->
                <div class="slide">
                    <img src="images/lg1.jpg" width="1920" height="auto" data-in="fade" data-out="fade">
                     <img src="images/1.PNG" width="900" height="600" data-position="110,180" data-in="bottom" data-out="bottom" data-delay="300">
                    <p  class="slide-1" data-position="60,150" data-in="fade" data-out="fade" data-delay="800">놀라운 5G, 듀얼로 제대로</p>
                    <p class="slide-1" data-position="130,150" data-in="fade" data-out="fade" data-delay="1200" style="color:yellow; font-size:5vw">용용전자 V50 ThinQ </p>
                </div>

                <div class="slide">
                    <img src="images/lg2.jpg" width="1920" height="auto" data-in="fade" data-out="fade">

                     <img src="images/4.png" width="1300" height="900" data-position="20,-150" data-in="bottom" data-out="bottom" data-delay="300">
                    <p  class="slide-1" data-position="80,90" data-in="fade" data-out="fade" data-delay="800" style="color:#848484">차원이 다른</p>
                    <p class="slide-1"  data-position="150,85" data-in="fade" data-out="fade" data-delay="1200" style="color:#A9A9F5; font-size:4vw">용용 올레드 TV AL ThinQ </p>
                </div>

                <div class="slide">
                    <img src="images/lg3.jpg" width="1920" height="auto" data-in="fade" data-out="fade">

                     <img src="images/5.png" width="1300" height="900" data-position="20,-60" data-in="bottom" data-out="bottom" data-delay="300">
                     <img src="images/6.png" width="1300" height="900" data-position="20,-250" data-in="top" data-out="bottom" data-delay="300">
                    <p  class="slide-1" data-position="60,50" data-in="fade" data-out="fade" data-delay="800" style="color:#F2F2F2;font-size:2vw">언제 어디서나 깨끗한 공기를 휴대하다</p>
                    <p class="slide-1"  data-position="120,50" data-in="fade" data-out="fade" data-delay="1200" style="color:#0B610B; font-size:3.5vw"> 용용 PuriCare Mini </p>
		<p class="slide-1"  data-position="125,620" data-in="fade" data-out="fade" data-delay="1200" style="color:#BFFF00; font-size:3vw"> 공기청정기 </p>
                </div>
            </div>
        </div>
    </section>
    <section>
    </section>

	<section class="bestlogo">
            <img src="images/best/bestlogo.PNG">
        </section>
         <section id="bestbox">
        <section class="best">
                       <div class="Box">
                            <div class="b1">
                                <a href="product_page.html"><img src="images/best/1.jpg"></a>
                            </div>
                            <div class="Box2">
                                <h3>휘센 듀얼 스페셜 에어컨<br>
                                <strong>판매가 : 2,950,000원</strong>
                                </h3>
                            </div>
                    </div>
                  </section>
                  <section class="best">
                       <div class="Box">
                            <div class="b1">
                                <a href="product_page.html"><img src="images/best/2.jpg"></a>
                            </div>
                            <div class="Box2">
                                <h3>TROMM 스타일러<br>
                                <strong>판매가 : 1,990,000</strong>
                                </h3>
                            </div>
                    </div>
                  </section>
                  <section class="best">
                       <div class="Box">
                            <div class="b1">
                                <a href="product_page.html"><img src="images/best/3.jpg"></a>
                            </div>
                            <div class="Box2">
                                <h3>DIOS 얼음정수기냉장고 804ℓ<br>
                                <strong>판매가 :2,300,000원</strong>
                                </h3>
                            </div>
                    </div>
                  </section>
                  <section class="best">
                       <div class="Box">
                            <div class="b1">
                                <a href="product_page.html"><img src="images/best/4.jpg"></a>
                            </div>
                            <div class="Box2">
                                <h3>슈퍼울트라 HD TV AI ThinQ <br>
                                <strong>판매가 : 1,790,000원</strong>
                                </h3>
                            </div>
                    </div>
                  </section>
                  <section class="best">
                       <div class="Box">
                            <div class="b1">
                                <a href="product_page.html"><img src="images/best/5.jpg"></a>
                            </div>
                            <div class="Box2">
                                <h3>시네빔 (밝기 550)<br>
                                <strong>판매가 : 549,000원</strong>
                                </h3>
                            </div>
                    </div>
                  </section>
                  <section class="best">
                       <div class="Box">
                            <div class="b1">
                                <a href="product_page.html"><img src="images/best/6.jpg"></a>
                            </div>
                            <div class="Box2">
                                <h3>사운드바<br>
                                <strong>판매가 : 1,299,000원</strong>
                                </h3>
                            </div>
                    </div>
                  </section>
                  <section class="best">
                       <div class="Box">
                            <div class="b1">
                                <a href="product_page.html"><img src="images/best/7.jpg"></a>
                            </div>
                            <div class="Box2">
                                <h3>퓨리케어 공기청정기 <br>
                                <strong>판매가 : 1,319,000원</strong>
                                </h3>
                            </div>
                    </div>
                  </section>
                  <section class="best">
                       <div class="Box">
                            <div class="b1">
                                <a href="product_page.html"><img src="images/best/8.jpg"></a>
                            </div>
                            <div class="Box2">
                                <h3>그램 17 (43.1cm)<br>
                                <strong>판매가 : 1,840,000원</strong>
                                </h3>
                            </div>
                    </div>
                  </section>
 </section>

  <!-- Start index.html -->

    <section class="wrapper style1">
        <div class="inner">
            <header class="align-center">
                <h2>여름이 오기 전 가전제품 용용전자에서 준비하세요!</h2>
            </header>
            <div class="flex flex-3">
                <div class="col align-center">
                    <div class="image round fit">
                        <img src="../contents/images/AirConditioner.JPG" alt="" />
                    </div>
                    <p>스스로 알아서 최적의 냉방<br>인공지능 학습으로 시원함을 만듦니다.</p>
                    <a href="#" class="button">에어컨 보러가기</a>
                </div>
                <div class="col align-center">
                    <div class="image round fit">
                        <img src="../contents/images/Dehumidifier.JPG" alt="" />
                    </div>
                    <p>장마철에도 산뜻하게<br>불쾌지수 높은 무더운 여름을 쾌적하게</p>
                    <a href="#" class="button">제습기 보러가기</a>
                </div>
                <div class="col align-center">
                    <div class="image round fit">
                        <img src="../contents/images/ElectricFan.jpg" alt="" />
                    </div>
                    <p>한낮의 무더위에도 더 빨리 시원해지는<br> 쾌속 냉방 아이스 쿨파워</p>
                    <a href="#" class="button">선풍기 보러가기</a>
                </div>
            </div>
        </div>
    </section>
    <section id="one" class="wrapper">
        <div class="inner flex flex-3">
            <div class="flex-item left">
                <div>
                    <h3>황사, 미세먼지로부터 <br>깨끗한 우리집 가전을 추천합니다.</h3>
                    <p>더 촘촘해진 필터로 0.01㎛ 극초미세먼지를 99.99% 이상 제거하니까 안심할 수 있습니다.</p>
                </div>
                <div>
                    <h3>더 강력한 바람으로 쾌적하게</h3>
                    <p>항공기 팬 기술을 적용한 톱니모양의 팬이 <br> 공기 저항을 줄여주어 곧게 뻗은 고속도로처럼 <br> 빠르고 강력한 청정 바람을 보내줍니다.</p>
                </div>
            </div>
            <div class="flex-item image fit round">
                <img src="../contents/images/AirPurifier.JPG" alt="" />
            </div>
            <div class="flex-item right">
                <div>
                    <h3>에어라운드 디자인</h3>
                    <p>공간을 아름답게 하는 원형의 디자인과 360˚ <br>청정방식으로 구현한 완벽한 라운드</p>
                </div>
                <div>
                    <h3>오염된 공기를 사방으로 흡입하고,<br> 깨끗한 공기를 토출합니다.</h3>
                    <p>알러지 원인물질, 생활냄새, 새집증후군 원인,<br> 스모그 원인 물질까지 6단계로 확실하게 제거! </p>
                </div>
            </div>
        </div>
    </section>

    <!-- Two -->
    <section id="two" class="wrapper style1 special">
        <div class="inner">
            <h2>용용 ThinQ는 매일 매일 당신에 맞춰 진화합니다.</h2>
            <figure>
                <blockquote>
                    ThinQ는 사용할 때마다 쌓이는 생활 데이터를 기반으로 당신의 사용습관과 생활패턴을 스스로 학습해 당신에 맞게 최적화됩니다.<br>
                    당신을 배우고, 당신을 이해하고, 당신을 돕는 인공지능가전 용용 ThinQ
                </blockquote>

            </figure>
        </div>
    </section>

    <!-- Three -->
    <section id="three" class="wrapper">
        <div class="inner flex flex-3">
            <div class="flex-item box">
                <div class="image fit">
                    <img src="../contents/images/Laptop.jpg" alt="" />
                </div>
                <div class="content">
                    <h3>울트라 PC</h3>
                    <p>성능은 더욱 강력하게, 크기는 더욱<br> 슬림하게, 편리함은 더욱 다양하게!</p>
                </div>
            </div>
            <div class="flex-item box">
                <div class="image fit">
                    <img src="../contents/images/TV.jpg" alt="" />
                </div>
                <div class="content">
                    <h3>용용 OLED TV AI ThinQ</h3>
                    <p>스스로 빛을 내는 올레드 패널은 픽셀 <br>하나하나가 정확한 색감을 표현하여 <br>자연색 그대로를 보여줍니다.</p>
                </div>
            </div>
            <div class="flex-item box">
                <div class="image fit">
                    <img src="../contents/images/TabletPc.jpg" alt="" />
                </div>
                <div class="content">
                    <h3>G Pad IV 8.0 FHD LTE</h3>
                    <p>Full HD IPS 디스플레이로 더 선명한 화질과 생동감 있는 영상을 언제 어디서나<br> 생생하게 즐길 수 있습니다.</p>
                </div>
            </div>
        </div>
    </section>
    <div class="page-wrap">
        <!-- Gallery -->
        <section id="galleries">
            <!-- Photo Galleries -->
            <div class="gallery">
                <header class="special">
                    <h2>용용전자의 다양한 제품 소식을 만나보세요.</h2>
                </header>
                <div class="content">
                    <div class="media">
                        <a href="../contents/images/a/main01.jpg"><img src="../contents/images/a/main01.jpg" alt="" title="상품 설명입니다." /></a>
                    </div>
                    <div class="media">
                        <a href="../contents/images/a/main02.jpg"><img src="../contents/images/a/main02.jpg" alt="" title="상품 설명입니다." /></a>
                    </div>
                    <div class="media">
                        <a href="../contents/images/a/main03.jpg"><img src="../contents/images/a/main03.jpg" alt="" title="상품 설명입니다." /></a>
                    </div>
                    <div class="media">
                        <a href="../contents/images/a/main04.jpg"><img src="../contents/images/a/main04.jpg" alt="" title="상품 설명입니다." /></a>
                    </div>
                    <div class="media">
                        <a href="../contents/images/a/main05.jpg"><img src="../contents/images/a/main05.jpg" alt="" title="상품 설명입니다." /></a>
                    </div>
                    <div class="media">
                        <a href="../contents/images/a/main06.jpg"><img src="../contents/images/a/main06.jpg" alt="" title="상품 설명입니다." /></a>
                    </div>
                    <div class="media">
                        <a href="../contents/images/a/main07.jpg"><img src="../contents/images/a/main07.jpg" alt="" title="상품 설명입니다." /></a>
                    </div>
                    <div class="media">
                        <a href="../contents/images/a/main08.jpg"><img src="../contents/images/a/main08.jpg" alt="" title="상품 설명입니다." /></a>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <!-- index.html End -->

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
        </div>
    </section>
</body>
</html>
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
<!--
    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
     NEW ITEM 박스-->
    <script src="./js/bootstrap.min.js"></script>
    <!-- 웹사이트 창 줄였을때 나타나는 메뉴바-->
<!--
    <script type="text/javascript" src="js/jquery.cookie.js"></script>  jQuery cookie -->

    <!-- Style Colors Switcher -->
    <script src="./js/jquery.fractionslider.js" type="text/javascript" charset="utf-8"></script>
    <!-- fractionslider - > 메인페이지 이미지 슬라이드-->
   <!-- <script type="text/javascript" src="./js/jquery.smartmenus.min.js"></script>-->
    <!-- fractionslider - > 메인페이지 이미지 슬라이드-->

   <!--  <script type="text/javascript" src="./js/jquery.smartmenus.bootstrap.min.js"></script>-->
    <!-- 메인 상단 메뉴 펼쳐지게 하는 효과 -->

  <!--    <script type="text/javascript" src="./js/owl.carousel.min.js"></script>-->
    <!-- NEW ITEM 이미지 박스 + 화살표 -->
<!--
    <script type="text/javascript" src="js/jflickrfeed.js"></script>
     NEW ITEM 애니메이션 효과 -->


    <script type="text/javascript" src="./js/jquery-scrolltofixed-min.js"></script>
     <script src="./js/main.js"></script>
     <!-- 무슨 역할인지 모르지만 이게 없으면 페이지 렉이 먹어서
        잘 안뜸-->
            <!--
    <script type="text/javascript" src="js/jquery-hoverdirection.min.js"></script>
 NEW ITEM 애니메이션효과 -->
