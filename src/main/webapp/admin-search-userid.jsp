<%@ page import="service.UserDao" %>
<%@ page import="bean.User" %>
<%--
  Created by IntelliJ IDEA.
  User: sokoface
  Date: 2023/6/3
  Time: 00:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <link rel="preconnect" href="https://fonts.googleapis.com/">
  <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
  <link href="static/css/css2.css" rel="stylesheet">
  <link rel="stylesheet" href="static/css/bootstrap.min.css">
  <link rel="stylesheet" href="static/css/owl.carousel.min.css">
  <link rel="stylesheet" href="static/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="static/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="static/css/style.css">
  <link rel="stylesheet" href="static/css/flaticon.css">
  <link rel="stylesheet" href="static/css/aos.css">
  <link rel="stylesheet" href="static/css/style1.css">
  <title>用户信息</title>
</head>
<%
  // 设置接收的编码为UTF-8
  request.setCharacterEncoding("utf-8");
  int userid;
  String str_userid=request.getParameter("userid");

  int inttype;
  try {
    userid = Integer.parseInt(str_userid);
  }
  catch (NumberFormatException e) {
    userid = 0;
  }

  User user = new User();
  UserDao dao = new UserDao();
  user = dao.getUser(userid);
  String username = user.getUsername();
  String password = user.getPassword();
  String email = user.getEmail();
  String phone = user.getPhone();

%>
<body>
<jsp:include page="admin-top.jsp"/>
<div class="untree_co-login-register">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-5">
        <div class="custom-box" data-aos="fade-up" data-aos-delay="0">
          <form action="admin-user-info.jsp" method="post">
            <div class="form-field">
              <label>用户编号</label>
              <h2><%=userid%></h2>
              <label>用户名</label>
              <h2><%=username%></h2>
              <label>用户密码</label>
              <h2><%=password%></h2>
              <label>邮箱</label>
              <h2><%=email%></h2>
              <label>电话</label>
              <h2><%=phone%></h2>
            </div>
            <div class="form-field">
              <input type="submit" class="btn btn-primary btn-block" value="返回">
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="static/js/jquery-3.4.1.min.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/jquery-migrate-3.0.1.min.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/popper.min.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/bootstrap.min.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/owl.carousel.min.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/jquery.easing.1.3.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/jquery.animateNumber.min.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/jquery.waypoints.min.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/jquery.fancybox.min.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/aos.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script src="static/js/custom.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script async="" src="static/js/js.js" type="04223ad77d6e5f1551e04c43-text/javascript"></script>
<script type="04223ad77d6e5f1551e04c43-text/javascript">
    window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag("js", new Date()); gtag("config", "UA-166033648-1");
</script>
<script src="static/js/rocket-loader.min.js" data-cf-settings="04223ad77d6e5f1551e04c43-|49" defer=""></script>
</body>
</html>
