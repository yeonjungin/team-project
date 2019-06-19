<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>용용전자</title>
	
	
    <script src="./js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript">
 
    </script>
    

	
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
    <script src="../contents/assets/js/jquery.poptrox.min.js"></script>
    <script src="../contents/assets/js/jquery.scrolly.min.js"></script>
    <script src="../contents/assets/js/skel.min.js"></script>
    <script src="../contents/assets/js/util.js"></script>
    <script src="../contents/assets/js/main.js"></script>
    <link rel="stylesheet" href="./css/login.css"/>
</head>
<style>
    <style>
@import url(http://weloveiconfonts.com/api/?family=fontawesome);
@import url(http://fonts.googleapis.com/css?family=Open+Sans:400,700);
[class*="fontawesome-"]:before {
  font-family: 'FontAwesome', sans-serif;
}

* {
  box-sizing: border-box;
}

html {
  height: 100%;
}

body{
  /*background-color: #2c3338;*/
  color: #606468;
  font: 400 0.875rem/1.5 "Open Sans", sans-serif;
  margin: 0;
  min-height: 100%;
}

a {
  color: #61031D;
  outline: 0;
  text-decoration: none;

}
a:focus, a:hover {
  text-decoration: underline;
}

input {
  border: 0;
  color: inherit;
  font: inherit;
  margin: 0;
  outline: 0;
  padding: 0;
  -webkit-transition: background-color .3s;
          transition: background-color .3s;
}

.site__container {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
      -ms-flex: 1;
          flex: 1;
  padding: 3rem 0;
  margin-top: 5vw;
    margin-bottom: 10vw;
}

.form input[type="password"], .form input[type="text"], .form input[type="submit"] {
  width: 100%;
}
.form--login {
  color: #606468;
}
.form--login label,
.form--login input[type="text"],
.form--login input[type="password"],
.form--login input[type="submit"] {
  border-radius: 0.25rem;
  padding: 1rem;
      height: 4vw;
}
.form--login label {
  background-color: #363b41;
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
  padding-left: 1.25rem;
  padding-right: 1.25rem;
}
.form--login input[type="text"], .form--login input[type="password"] {
  background-color: #3b4148;
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
  color:white;
}
.form--login input[type="text"]:focus, .form--login input[type="text"]:hover, .form--login input[type="password"]:focus, .form--login input[type="password"]:hover {
  background-color: #434A52;
}
.form--login input[type="submit"] {
  background-color: #3E035A;/*#ea4c88;*/
  color: #eee;
  font-weight: bold;
  text-transform: uppercase;
}
.form--login input[type="submit"]:focus, .form--login input[type="submit"]:hover {
  background-color: #d44179;
}
.form__field {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  margin-bottom: 1vw;}
.form__input {
  -webkit-box-flex: 1;
  -webkit-flex: 1;
      -ms-flex: 1;
          flex: 1;
}

.align {
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;

}

.hidden {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;

}

.text--center {
  text-align: center;
}

.grid__container {
  margin: 0 auto;
  max-width: 20rem;
  width: 90%;
}

</style>
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

</style>
<body class="home">
<% 		 
		
	
		String msg = (String)request.getAttribute("error");
		System.out.println(msg);
		if(msg == null) {
			msg="";
		}else if(msg.equals("IDerror"))
		{
			out.println("<script>alert('이미 아이디가 존재합니다!!!');</script>");
		}
		
		
		
		%>
   <div id="event" style="margin-bottom:-1vw; width:auto">
             <a href="#"><img src="images/toppopup.jpg" width="auto" height="auto" ></a>
        </div>
    <!--Start mainPage.html-->
    <header id="header">
     
    
        <div id="top-bar">

            <div class="container">
                <div id="right_up_menubar">
                     <!--div id="logo">
                            <h1><a href="mainPage.html"><img alt="logo" src="" /></a></h1>
                     </div-->
               <span><a href="./outside/mainpage2.jsp">돌아가기</a></span>
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

<body class="align" >

  <div class="site__container" style="border:2px solid #6D6A6A; width:36vw; margin-left:30vw; height:48vw">

    <div class="grid__container">
      <div style="color:black; font-size:3vw; text-align:center">Register</div>
      
      <form action="memberRegis.do"  method="POST" class="form form--login" style="margin-top:3.3vw; width:26vw; margin-left:-5.5vw">

        <div class="form__field">
          <label class="fontawesome-user fa fa-user fa-2x" for="login__username" style=""><span class="hidden">Username</span></label>
          <input id="login__username" name="R_id" type="text" class="form__input" placeholder="Username" required>
        </div>

        <div class="form__field">
          <label class="fontawesome-lock fa fa-lock fa-2x" for="login__password"><span class="hidden">Password</span></label>
          <input id="login__password" name="R_pwd" type="password" class="form__input" placeholder="Password" required>
        </div>

         <div class="form__field">
          <label class="fontawesome-mail fa fa-envelope fa-2x" for="login__Email"><span class="hidden">Email</span></label>
          <input id="login__Email" type="text" name="R_mail" class="form__input" placeholder="Email" required>
        </div>

         <div class="form__field">
          <label class="fontawesome-phone fa fa-phone fa-2x" for="login__Phone" style=""><span class="hidden">Phone</span></label>
          <input id="login__Phone" type="text" name="R_phone" class="form__input" placeholder="Phone" required>
        </div>
        <div class="form__field" >
          <input type="submit" style="height:5vw; margin-top:1.5vw" value="Register" style="font-size:2vw; margin-top:3vw">
        </div>

      </form>

     

    </div>

  </div>
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
    <script src="js/bootstrap.min.js"></script>
    <!-- 웹사이트 창 줄였을때 나타나는 메뉴바-->
<!--
    <script type="text/javascript" src="js/jquery.cookie.js"></script>  jQuery cookie -->

    <!-- Style Colors Switcher -->
    <script src="./js/jquery.fractionslider.js" type="text/javascript" charset="utf-8"></script>
    <!-- fractionslider - > 메인페이지 이미지 슬라이드-->
    <script type="text/javascript" src="./js/jquery.smartmenus.min.js"></script>
    <!-- fractionslider - > 메인페이지 이미지 슬라이드-->

    <script type="text/javascript" src="./js/jquery.smartmenus.bootstrap.min.js"></script>
    <!-- 메인 상단 메뉴 펼쳐지게 하는 효과 -->

    <script type="text/javascript" src="./js/owl.carousel.min.js"></script>
    <!-- NEW ITEM 이미지 박스 + 화살표 -->
<!--
    <script type="text/javascript" src="./js/jflickrfeed.js"></script>
     NEW ITEM 애니메이션 효과 -->


    <script type="text/javascript" src="./js/jquery-scrolltofixed-min.js"></script>
     <script src="js/main.js"></script>
     <!-- 무슨 역할인지 모르지만 이게 없으면 페이지 렉이 먹어서
        잘 안뜸-->
            <!--
    <script type="text/javascript" src="./js/jquery-hoverdirection.min.js"></script>
 NEW ITEM 애니메이션효과 -->
