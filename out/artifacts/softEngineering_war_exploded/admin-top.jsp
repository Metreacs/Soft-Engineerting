<%@ page import="bean.User" %><%--
  Created by IntelliJ IDEA.
  User: Wu Chuanjie
  Date: 2023/5/30
  Time: 20:47
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
</head>
<body>
<%--头部信息--%>
<%
    User user =(User)session.getAttribute("user");
    if(user == null){
        response.sendRedirect("login.jsp");
    }else {
%>
<div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close">
            <span class="icofont-close js-menu-toggle"></span>
        </div>
    </div>
    <div class="site-mobile-menu-body"></div>
</div>
<nav class="site-nav dark js-site-navbar mb-5 site-navbar-target">
    <div class="container">
        <div class="site-navigation">
            <a href="admin-home.jsp" class="logo m-0 float-left">四、六级后台管理系统<span class="text-primary">.</span></a>
            <ul class="js-clone-nav d-none d-lg-inline-block site-menu float-left">
                <li class="active"><a href="admin-home.jsp">主页</a></li>
                <li><a href="admin-user-info.jsp">用户信息</a></li>
                <li><a href="admin-test-info.jsp">考试信息</a></li>
            </ul>
            <ul class="js-clone-nav d-none mt-1 d-lg-inline-block site-menu float-right">
                欢迎您：
                <li class="cta-primary"><a href="admin-home.jsp"><%=user.getUsername()%></a></li>
                <li class="cta-button-outline"><a href="logout.jsp">退出登录</a></li>

            </ul>
            <a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block dark d-lg-none" data-toggle="collapse" data-target="#main-navbar">
                <span></span>
            </a>
        </div>
    </div>
</nav>
<%
    }
%>
</body>
</html>
