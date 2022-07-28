<%@ page import="java.util.Map" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 7/28/2022
  Time: 12:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%!
    Map<String,String> dic = new HashMap<>();
%>

<%
    dic.put("hello","xin chào");
    dic.put("how","thế nào");
    dic.put("book","quyển vở");
    dic.put("computer","máy tính");

    String search = request.getParameter("search");
    PrintWriter printWriter = response.getWriter();
    String result = dic.get(search);
    if (result != null) {
        printWriter.println("word: " + search + "<br>");
        printWriter.println("result: " + result);
    } else {
        printWriter.println("Not found");
    }
%>

</body>
</html>
