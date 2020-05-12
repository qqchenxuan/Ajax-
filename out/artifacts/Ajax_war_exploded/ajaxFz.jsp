<%--
  Created by IntelliJ IDEA.
  User: 晨轩
  Date: 2020/5/8
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/ajaxFzJs.js">
    </script>
</head>
<body>
<h3>欢迎访问英雄联盟</h3>
<hr>
英雄名称 ： <input type="text" name="uname" value="" id="uname">
<input type="button" value="搜索" onclick="getData2()">
<hr>
<table border="1px" id="ta">
    <tr>
        <td>编号</td>
        <td>名称</td>
        <td>价格</td>
        <td>位置</td>
        <td>描述</td>
    </tr>
</table>
</body>
</html>
