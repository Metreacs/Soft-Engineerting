<%@ page import="service.UserDao" %>
<%--
  Created by IntelliJ IDEA.
  User: sokoface
  Date: 2023/6/4
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除用户</title>
</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");
  String username="";
  request.getParameter("username");
  Integer userid =0 ;
  request.getParameter("userid");
  UserDao dao = new UserDao();
  if(userid==0 && username!="") {
    boolean flag = dao.deleteUserbyName(username);
    if (flag) {
    } else {
      response.sendRedirect("admin-delete-fail.jsp");
    }
  }
  else if(userid!=0 && username=="") {
    boolean flag = dao.deleteUser(userid);
    if (flag) {
    } else {
      response.sendRedirect("admin-delete-fail.jsp");
    }
  }
%>
<script type="text/javascript" language="javascript">
    alert("删除成功！");
    window.document.location.href="admin-user-info.jsp";
</script>

</body>
</html>
