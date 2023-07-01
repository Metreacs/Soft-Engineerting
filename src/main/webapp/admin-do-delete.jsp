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
  // 获取绝对路径路径 ,开发项目一定要使用绝对路径，不然肯定出错
  String path = request.getContextPath();
  String basePath = request.getScheme() + "://" + request.getServerName() + ":"
          + request.getServerPort() + path + "/";
%>
<%
  request.setCharacterEncoding("UTF-8");
  Integer userid =0 ;
  String str_userid;
  str_userid=request.getParameter("userid");
  userid = Integer.parseInt(str_userid);
  UserDao dao = new UserDao();
  System.out.println(userid);
  if(userid!=0) {
    boolean flag = dao.deleteUser(userid);
    if (flag) {
      System.out.println("按用户id删除");
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
