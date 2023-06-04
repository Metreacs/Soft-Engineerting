<%@ page import="bean.Paper" %>
<%@ page import="bean.User" %>
<%@ page import="service.PaperDao" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>提交中...</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String studentID = request.getParameter("StudentID");
    String grade = request.getParameter("Grade");
    PaperDao pDao=new PaperDao();
    System.out.println(studentID);
    System.out.println(grade);
    boolean flag=pDao.markScore(Integer.parseInt(studentID), Integer.parseInt(grade));
    if(flag){
        System.out.println("success");
        response.sendRedirect("teacher-submit-success.jsp");
    }
    else{
        System.out.println("failed");
        response.sendRedirect("teacher-submit-fail.jsp");
    }
%>
</body>
</html>
