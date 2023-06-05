<%@ page import="bean.Paper" %>
<%@ page import="bean.User" %>
<%@ page import="bean.Texts" %>
<%@ page import="service.PaperDao" %>
<%@ page import="service.TextsDao" %>
<%--
  Created by IntelliJ IDEA.
  User: 贺文轩
  Date: 2023/6/1
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>交卷中...</title>
</head>
<body>
<%
    // 设置接收的编码为UTF-8
    request.setCharacterEncoding("utf-8");
    Paper paper = new Paper();
    User user =(User)session.getAttribute("user");
    if(user == null){
        response.sendRedirect("login.jsp");
    }
    TextsDao tdao=new TextsDao();
    Integer num=tdao.getTextNum();
    System.out.println(user);
    String objective="";
    Integer score=0;
    for (int i=1;i<=num;i++){
        if(tdao.getTexts(i).getType()==0){
            String textans=request.getParameter(String.valueOf(i));
            System.out.println(textans);
            System.out.println(tdao.getTexts(i).getAnswer());
            if(tdao.getTexts(i).getAnswer().equals(textans)){
                score+=5;
            }
            objective+=textans;

        }
    }
    String subjective="";
    for (int i=1;i<=num;i++){
        if(tdao.getTexts(i).getType()==1){
            String textans=request.getParameter(String.valueOf(i));
            System.out.println(textans);
            subjective+=textans+'\n';

        }
    }
    //String objective = request.getParameter("objective");
    //String subjective = request.getParameter("subjective");
//    System.out.println("登录页传来的信息："+email+"  "+password);
    paper.setStudentid(user.getUserid());
    paper.setObjective(objective);
    paper.setSubjective(subjective);
    paper.setOb_grade(score);
    System.out.println(paper);
    PaperDao pDao=new PaperDao();
    boolean flag=pDao.writePaper(paper);
    if(flag){
        System.out.println("success");
        response.sendRedirect("student-test-success.jsp");
    }
    else{
        System.out.println("failed");
        response.sendRedirect("student-test-fail.jsp");
    }

%>
</body>
</html>
