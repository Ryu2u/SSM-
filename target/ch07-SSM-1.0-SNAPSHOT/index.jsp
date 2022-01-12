<%--
  Created by IntelliJ IDEA.
  User: Ryuzu
  Date: 2022/1/10
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>">
</head>
<body>
    <div align="center">
        <table border="2px">
            <tr>
                <td><a href="addStudent.jsp">添加学生</a></td>
            </tr>
            <tr>
                <td><a href="findStudent.jsp">查询学生</a></td>
            </tr>
        </table>

    </div>
</body>
</html>
