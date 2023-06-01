<%@ page import="service.PaperDao" %>
<%@ page import="bean.Paper" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <title>判卷</title>
</head>
<%
    // 设置接收的编码为UTF-8
    request.setCharacterEncoding("utf-8");
    Paper paper = new Paper();
    PaperDao pDao = new PaperDao();
    paper = pDao.getPaperByTimes();
    Integer StudentID = paper.getStudentid();
    String sub = paper.getSubjective();
%>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="100">
<jsp:include page="teacher-top.jsp"/>
<div class="untree_co-login-register">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="custom-box" data-aos="fade-up" data-aos-delay="0">
                    <form action="teacher-submit-do.jsp" method="post">
                        <div class="form-field">
                            <label>主观题</label>
                            <h2><%=sub%></h2>
                            <input type="text" class="form-control" name="Grade" id="Grade">
                        </div>
                        <div class="form-field">
                            <input type="hidden" name="StudentID" value="<%=StudentID%>">
                            <input type="submit" class="btn btn-primary btn-block" value="提交">
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
