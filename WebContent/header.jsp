<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <div id="event" style="margin-bottom:-1vw; width:auto">
             <a href="#"><img src="images/toppopup.jpg" width="auto" height="auto" ></a>
        </div>
    <!--Start mainPage.html-->
    <header id="header">
     
    
        <div id="top-bar">
               
            <div class="container">
              <a href="./outside/mainpage2.jsp"><h3 style="color:white;width:15vw;font-size:2.7vw;margin-top:2.3vw;margin-left:-2vw;font-weight: bold;">용용전자</h3></a>
                
                <div id="right_up_menubar" style="margin-top:-2vw">
                     <!--div id="logo">
                            <h1><a href="mainPage.html"><img alt="logo" src="" /></a></h1>
                     </div-->
      
                     
                     
                      <% if(session.getAttribute("session_id")!=null) {  %>
                           ${session_id}님 환영합니다.
                           <span><a href="memberLogout.do">Logout</a></span>
                           <%if(session.getAttribute("session_id").equals("admin")) {
                        	  %><span><a href="./admin.jsp">관리자 페이지</a></span>
                           <%}else{ %>
                           <%} %>
                           <%}else{ %>
                           <span><a href="./Login.jsp">Login</a></span>
                            <%} %>                       
                           <%if(session.getAttribute("session_id")==null) { %>
                           
                           <span><a href="./Register.jsp">Join</a></span>
                           <%}else{ %>
                           <span><a href="./cartList.do">Cart</a></span>
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
   
    </label>
  </div>
  
  <nav id="menu" class="menu">
    <ul class="dropdown">
      <li ><a href="#Link" title="Link">TV/AV</a>
        <ul >
          <li ><a href="./TV.jsp" title="Link">TV </a>
            
          </li>
          <li ><a href="#Link" title="Link">프로젝터</a></li>
          <li ><a href="#Link" title="Link">AV </a>
            
          </li>
        </ul>
      </li>
      <li ><a href="#Link" title="Link">PC</a>
        <ul >
          <li ><a href="./PC.jsp" title="Link ">노트북</a></li>
          <li ><a href="#Link" title="Link">일체형PC</a>
          </li>
          <li ><a href="#Link" title="Link">데스크톱</a>
          </li>
            <li ><a href="#Link" title="Link">모니터</a></li>
        </ul>
      </li>
      <li ><a href="#Link" title="Link">주방가전</a>
        <ul >
          <li ><a href="./KIC.jsp" title="Link">냉장고</a></li>
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