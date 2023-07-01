<%@ page import="bean.User" %>
<%@ page import="service.UserDao" %>
<%--
  Created by IntelliJ IDEA.
  User: sokoface
  Date: 2023/6/4
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>修改中...</title>
</head>
<body>
<%
  // 设置获取注册时的编码为UTF-8
  request.setCharacterEncoding("UTF-8");
  User user=new User();
  //获取register.jsp页面提交的账号和密码
  String str_userid=request.getParameter("userid");
  Integer userid = Integer.parseInt(str_userid);
  String name=request.getParameter("username");
  String password=request.getParameter("password");
  String email=request.getParameter("email");
  String phone=request.getParameter("phone");


  user.setUserid(userid);
  user.setUsername(name);
  user.setPassword(password);
  user.setEmail(email);
  user.setPhone(phone);
  //引入数据交互层
  UserDao dao=new UserDao();
  //检查邮箱是否已被使用
  if(dao.getUserByEmail(email)!=null){
    response.sendRedirect("register-fail.jsp");
  }else{
    boolean flag=dao.updateUser(user);
    if(flag){
    }else{
      response.sendRedirect("register-fail.jsp");
    }
  }

%>
<script type="text/javascript" language="javascript">
  alert("修改成功！");
  window.document.location.href="admin-user-info.jsp";
</script>
</body>
</html>

