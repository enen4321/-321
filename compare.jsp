<%--
  Created by IntelliJ IDEA.
  User:於溥
  Date: 2020/7/12
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
String one=request.getParameter("numone");
String two=request.getParameter("numtwo");
Integer numone=new Integer(one);
Integer numtwo=new Integer(two);
if(numone>numtwo){
    out.print(numone);
}else if(numone<numtwo){
    out.print(numtwo);
}else{
    out.print("一样大");
}
%>
<br>
<a href="login2.jsp">继续比较</a>
</body>
</html>
