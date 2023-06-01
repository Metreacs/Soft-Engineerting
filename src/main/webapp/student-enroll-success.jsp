<%--
  Created by IntelliJ IDEA.
  User: 贺文轩
  Date: 2023/6/1
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    // 获取绝对路径路径 ,开发项目一定要使用绝对路径，不然肯定出错
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":"
            + request.getServerPort() + path + "/";
%>
<!doctype html>
<html>
<head>
    <base href="<%=basePath %>"/>
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
    <title>注册成功</title>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="100">
<jsp:include page="student-top.jsp"/>
<div class="untree_co-login-register">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="custom-box" data-aos="fade-up" data-aos-delay="0">
                    <h2 class="heading">报名成功</h2>
                    <form action="login.jsp" method="post">
                        <div class="form-field">
                            <input type="submit" class="btn btn-primary btn-block" value="前往登录">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
