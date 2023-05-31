<%@ page import="bean.User" %>
<%@ page import="service.UserDao" %>

<%--
  Created by IntelliJ IDEA.
  User: Trump
  Date: 2023/5/30
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册中...</title>
</head>
<body>
<%
    // 设置获取注册时的编码为UTF-8
    request.setCharacterEncoding("UTF-8");
    User user=new User();
    //获取register.jsp页面提交的账号和密码
    String name=request.getParameter("name");
    String password=request.getParameter("password");
    String email=request.getParameter("email");
    String phone=request.getParameter("phone");

    //获取register.jsp页面提交的账号和密码设置到实体类User中
    user.setUsername(name);
    user.setPassword(password);
    user.setEmail(email);
    user.setPhone(phone);

    //引入数据交互层
    UserDao dao=new UserDao();
    boolean flag=dao.register(user);

    if(flag){
        response.sendRedirect("login.jsp");
    }else{
        response.sendRedirect("register.jsp");
    }
%>
</body>
</html>
