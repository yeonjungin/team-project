<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1.0">
   <title></title>
   <link rel="stylesheet" href="css/bootstrap.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <link rel="shortcut icon" href="favicon.ico">
   <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="css/base.css" />
   <link rel="stylesheet" href="css/default2.css">
   <!--header css-->
   <link rel="stylesheet" href="css/index.css">
   <link rel="stylesheet" href="css/style1.css">
   <!-- Origin - /contents/index.html -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="css/style.css" />
</head>
<body>
   <!-- 로그인이 된 사람들의 세션을 만들어 준다. 회원값이 있는 사람들은 userID에 정보가 담기게 되고 아닌 사람은 null값을 가지게 된다. -->
   <%
      String userID = null;
      if(session.getAttribute("session_id") != null){
         userID = (String) session.getAttribute("session_id");
      }
   %>
   <!-- header -->
   <jsp:include page="header.jsp"/>
   <div class="container" style="margin-bottom: 69px";>
       <div class="row">
          <form method="post" action="writeAction.jsp" style=" margin-top: 48px";>
             <table class="table table-striped" style="text-align:center; border:1px; solid #dddddd">
                <thead>
                  <tr>
                  <th colspan="1" style="background-color:#eeeeee; text-align: center;">게시판 글쓰기 양식</th>
                  </tr>             
                   </thead>
                   <tbody>
                   <tr>
                   <td><input type="text" class="form-control" placeholder="글제목" name="bbsTitle" maxlength="50"></td>
                   </tr>
                   <tr>   
                   <td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height:350px"></textarea> </td>
                   </tr>   
                   </tbody>
                </table>
                <a href="BBs.jsp" class="btn btn-primary pull-right">돌아가기</a>
                <input type="submit" class="btn btn-primary pull-right" style="margin-right: 10px;color: #fff; font-size:14px;" value="글쓰기">
                
            </form>
          </div>
      </div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>   
      <script src="js/bootstrap.min.js"></script> 
      <!-- footer -->
   <jsp:include page="footer.jsp"/>
</body>
</html>