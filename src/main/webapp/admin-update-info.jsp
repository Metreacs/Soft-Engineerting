<%--
  Created by IntelliJ IDEA.
  User: sokoface
  Date: 2023/6/4
  Time: 17:57
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
  <title>修改用户信息</title>
</head>
<body>
<jsp:include page="admin-top.jsp"/>
<%
    request.setCharacterEncoding("UTF-8");
    Integer userid =0 ;
    String str_userid;
    str_userid=request.getParameter("userid");
    userid = Integer.parseInt(str_userid);
%>
<div class="untree_co-login-register">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-5">
        <div class="custom-box" data-aos="fade-up" data-aos-delay="0">
          <h2 class="heading">修改用户信息</h2>
          <form action="admin-do-update.jsp" method="post" name="updateForm">
            <div class="form-field">
              <label>用户编号</label>
              <h2><%=userid%>
              </h2>
              <input type="hidden" name="userid" value="<%=userid%>">
            </div>
            <div class="form-field">
              <label for="username">用户名</label>
              <input type="username" class="form-control" name="username" id="username" autofocus="autofocus">
            </div>
            <div class="form-field">
              <label for="email">邮箱</label>
              <input type="email" class="form-control" name="email" id="email" autofocus="autofocus">
            </div>
            <div class="form-field">
              <label for="phone">电话</label>
              <input type="phone" class="form-control" name="phone" id="phone" autofocus="autofocus">
            </div>
            <div class="form-field">
              <label for="password">密码</label>
              <input type="password" class="form-control" name="password" id="password" autofocus="autofocus">
            </div>
            <div class="form-field">
              <label for="password">确认密码</label>
              <input type="repassword" class="form-control" name="repassword" id="repassword" autofocus="autofocus">
            </div>
            <div class="form-field">
              <input type="submit" class="btn btn-primary btn-block" value="提交信息" onclick="return checkForm()">
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
<script type="text/javascript">
  function checkForm() {
    var name = registerForm.name.value;
    var pwd = registerForm.password.value;
    var repwd = registerForm.repassword.value;
    var email = registerForm.email.value;
    //alert(name + pwd + repwd);
    if (name == "" || name == null){
      alert("请输入姓名");//弹出提示
      registerForm.name.focus();//把鼠标焦点移到name里
      return false;
    }else if (email == "" || email == null) {
      alert("请输入邮箱");
      registerForm.email.focus();
      return false;
    }else if (pwd == "" || pwd == null) {
      alert("请输入密码");
      registerForm.password.focus();
      return false;
    } else if (repwd == "" || repwd == null) {
      alert("请输入确认密码");
      registerForm.repassword.focus();
      return false;
    } else if (pwd != repwd) {
      alert("两次密码输入不一致，请重新输入!");
      registerForm.repassword.focus();
      return false;
    }
    return true;
  }
</script>
</body>
</html>
