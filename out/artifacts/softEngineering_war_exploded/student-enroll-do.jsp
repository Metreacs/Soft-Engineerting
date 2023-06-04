<%@ page import="bean.User" %>
<%@ page import="bean.Paper" %>
<%@ page import="service.UserDao" %>
<%@ page import="service.PaperDao" %>
<%--
  Created by IntelliJ IDEA.
  User: 贺文轩
  Date: 2023/6/1
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>报名中...</title>
</head>
<body>
<%
    // 设置获取注册时的编码为UTF-8
    request.setCharacterEncoding("UTF-8");
    UserDao dao=new UserDao();
    //获取register.jsp页面提交的账号和密码
    String password=request.getParameter("password");
    String email=request.getParameter("email");

    //获取register.jsp页面提交的账号和密码设置到实体类User中
    User user=dao.getUserByEmail(email);
    PaperDao pDao=new PaperDao();
    //引入数据交互层
    //检查邮箱是否已被使用
    if(dao.getUserByEmail(email)==null){
        response.sendRedirect("student-enroll-fail-unreg.jsp");
    }else if(pDao.getPaperByStuid(user.getUserid())!=null){
        response.sendRedirect("student-enroll-fail-reenroll.jsp");
    }
    else{
        Paper paper = new Paper();
        paper.setStudentid(user.getUserid());

        boolean flag=pDao.studentEnroll(paper);

        if(flag){
            response.sendRedirect("student-enroll-success.jsp");
        }else{
            response.sendRedirect("student-enroll-fail-unreg.jsp");
        }
    }

%>
</body>
</html>
