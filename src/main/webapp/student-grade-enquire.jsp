<%@ page import="bean.User" %>
<%@ page import="bean.Paper" %>
<%@ page import="service.UserDao" %>
<%@ page import="service.PaperDao" %>
<%--
  Created by IntelliJ IDEA.
  User: Wu Chuanjie
  Date: 2023/5/31
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>考试成绩查询</title>
</head>
<body>
<jsp:include page="student-top.jsp"/>
<%
    PaperDao pdao=new PaperDao();
    User user =(User)session.getAttribute("user");
    System.out.println(user);
    Integer userid=user.getUserid();
    Paper p=pdao.getPaperByStuid(userid);
%>
<div class="untree_co-login-register">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5">
                <div class="custom-box" data-aos="fade-up" data-aos-delay="0">
                    <h2 class="heading">您本次考试的成绩为：</h2>
                    <form action="student-home.jsp" method="post">
                        <div class="form-field">
                            <label>客观题</label>
                            <h2><%=p.getOb_grade()%><label>分</label>
                            </h2>
                        </div>
                        <div class="form-field">
                            <label>主观题</label>
                            <h2><%=p.getSub_grade()%><label>分</label>
                            </h2>
                        </div>
                        <div class="form-field">
                            <label>总分</label>
                            <h2><%=p.getSub_grade()+p.getOb_grade()%><label>分</label>
                            </h2>
                        </div>
                        <div class="form-field">
                            <input type="submit" class="btn btn-primary btn-block" value="回到主页">
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
