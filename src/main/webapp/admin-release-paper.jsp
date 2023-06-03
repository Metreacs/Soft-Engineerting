<%--
  Created by IntelliJ IDEA.
  User: sokoface
  Date: 2023/6/2
  Time: 22:59
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
    <title>添加试卷</title>
</head>
<body>
    <jsp:include page="admin-top.jsp"/>
    <div class="untree_co-login-register">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="custom-box" data-aos="fade-up" data-aos-delay="0">
                        <h2 class="heading">添加试卷</h2>
                        <form action="admin-release-do.jsp" method="post">
                            <div class="form-field">
                                <label for="type">题目类型（0客观题，1主观题）</label>
                                <input type="type" class="form-control" name="type" id="type" autofocus="autofocus">
                            </div>
                            <div class="form-field">
                                <label for="question">题目</label>
                                <input type="question" class="form-control" name="question" id="question">
                            </div>
                            <div class="form-field">
                                <label for="choosea">选项A</label>
                                <input type="choosea" class="form-control" name="choosea" id="choosea">
                            </div>
                            <div class="form-field">
                                <label for="chooseb">选项B</label>
                                <input type="chooseb" class="form-control" name="chooseb" id="chooseb">
                            </div>
                            <div class="form-field">
                                <label for="choosec">选项C</label>
                                <input type="choosec" class="form-control" name="choosec" id="choosec">
                            </div>
                            <div class="form-field">
                                <label for="choosed">选项D</label>
                                <input type="choosed" class="form-control" name="choosed" id="choosed">
                            </div>
                            <div class="form-field">
                                <label for="answer">答案</label>
                                <input type="answer" class="form-control" name="answer" id="answer">
                            </div>
                            <div class="form-field">
                                <input type="submit" class="btn btn-primary btn-block" value="提交">
                            </div>
                        </form>
                        <form action="admin-home.jsp" method="post">
                            <div class="form-field">
                                <input type="submit" class="btn btn-primary btn-block" value="结束出卷">
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
