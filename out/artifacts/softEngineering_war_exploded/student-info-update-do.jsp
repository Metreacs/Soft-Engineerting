<%@ page import="bean.User" %>
<%@ page import="service.UserDao" %>
<%--
  Created by IntelliJ IDEA.
  User: 贺文轩
  Date: 2023/6/3
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>提交中...</title>
</head>
<body>
<%
    // 设置获取注册时的编码为UTF-8
    request.setCharacterEncoding("UTF-8");
    User user =(User)session.getAttribute("user");
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
    System.out.println(user);
    UserDao dao=new UserDao();
    //检查邮箱是否已被使用
    boolean flag=dao.updateUser(user);
    if(flag){
        response.sendRedirect("student-info-update-success.jsp");
    }else{
        response.sendRedirect("student-info-update-fail.jsp");
    }

%>
</body>
</html>
