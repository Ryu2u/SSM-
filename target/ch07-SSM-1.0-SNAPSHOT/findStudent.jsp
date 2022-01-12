<%--
  Created by IntelliJ IDEA.
  User: Ryuzu
  Date: 2022/1/12
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询学生页面</title>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script>
        $(function (){
            loadStudent();
            $("#btn").click(function (){
               loadStudent();
            })
        })
        function loadStudent() {
            $.ajax({
                url:"student/findStudent.do",
                type: "get",
                dataType: "json",
                success: function (data) {
                    //清楚旧的数据
                    $("#stuBody").html("");
                    //添加新数据库
                    $.each(data,function (i,n){
                        $("#stuBody").append("<tr>")
                            .append("<td>" + n.id + "</td>")
                            .append("<td>" + n.name + "</td>")
                            .append("<td>" + n.age + "</td>")
                            .append("</tr>")
                    })

                }
            })

        }
    </script>
</head>
<body>
    <table border="2px" align="center">
        <tr>
            <th>学生编号</th>
            <th>学生姓名</th>
            <th>学生年龄</th>
        </tr>
        <tbody id="stuBody">

        </tbody>

        <tr>
            <th colspan="3">
                <input type="button" id="btn" value="查询所有学生" />
            </th>
        </tr>
    </table>
</body>
</html>
