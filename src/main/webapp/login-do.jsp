<%@ page import="bean.User" %>
<%@ page import="service.UserDao" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Trump
  Date: 2023/5/30
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 获取绝对路径路径 ,开发项目一定要使用绝对路径，不然肯定出错
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":"
            + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath %>"/>
    <title>login—do</title>

</head>
<body>
<%
    // 设置接收的编码为UTF-8
    request.setCharacterEncoding("utf-8");
    User user = new User();
    UserDao dao = new UserDao();

    String email = request.getParameter("email");
    String password = request.getParameter("password");
    System.out.println("登录页传来的信息："+email+"  "+password);
    user.setEmail(email);
    user.setPassword(password);

    // 获取用户登录信息
    User us = dao.login(user);

    System.out.println("----登录的用户信息----");
    System.out.println(us);

    // 设置会话
    if(us!=null){
        session.setAttribute("user", us);

    }


    // 这里要对us判空处理，1是管理者，0是学生，此处的isadmin必须填写不能为空。
    if (us != null && us.getIden().equals(0)) {
        System.out.println("进入学生主页");
        response.sendRedirect("user-home.jsp");
    } else if (us != null && us.getIden().equals(1)) {
        System.out.println("进入老师主页");
        response.sendRedirect("teacher-home.jsp");
    } else if (us != null && us.getIden().equals(2)) {
        System.out.println("进入管理员主页");
        response.sendRedirect("admin-home.jsp");
    } else {
        System.out.println("用户信息不存在，登录失败");
        response.sendRedirect("login-fail.jsp");
    }
%>
</body>
</html>
