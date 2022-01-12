<%--
  Created by IntelliJ IDEA.
  User: Ryuzu
  Date: 2022/1/12
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
%>
<html>
<head>
    <title>学生添加页面</title>
    <base href="<%=basePath%>"/>
</head>
<body>
    <form action="student/addStudent.do" method="post">
        <table align="center" border="2px">
            <tr>
                <td>学生姓名:</td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td>学生年龄:</td>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <input type="reset" value="清空"/>
                    &nbsp;&nbsp;&nbsp;
                    <input type="submit" value="注册学生"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
