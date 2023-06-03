<%@ page import="bean.Texts" %>
<%@ page import="service.TextsDao" %>
<%--
  Created by IntelliJ IDEA.
  User: sokoface
  Date: 2023/6/2
  Time: 23:08
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
    Texts dao=new Texts();
    //获取admin-release-paper.jsp页面提交的账号和密码
    String question=request.getParameter("question");
    String answer=request.getParameter("answer");
    String type=request.getParameter("type");

    dao.setQuestion(question);
    dao.setAnswer(answer);
    int inttype;
    try {
        inttype = Integer.parseInt(type);
    }
    catch (NumberFormatException e) {
        inttype = 0;
    }
    dao.setQuestionType(inttype);
    if(inttype==0){
        //如果是客观题
        String choosea=request.getParameter("choosea");
        String chooseb=request.getParameter("chooseb");
        String choosec=request.getParameter("choosec");
        String choosed=request.getParameter("choosed");
        dao.setChooseA(choosea);
        dao.setChooseB(chooseb);
        dao.setChooseC(choosec);
        dao.setChooseD(choosed);
    }
    TextsDao submit= new TextsDao();
    boolean flag = submit.submitText(dao);
    if(flag){
        response.sendRedirect("admin-release-paper.jsp");
    }
    else{
        response.sendRedirect("admin-submit-fail.jsp");
    }
%>
</body>
</html>
