<%--
  Created by IntelliJ IDEA.
  User: 晨轩
  Date: 2020/5/4
  Time: 17:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function getDate() {
                 //获取元素对象
            var showdiv = document.getElementById("showdiv");
            //修改元素内容
            showdiv.innerHTML="呵呵修改你"
        }
    </script>
    <style type="text/css">
        #showdiv{
            boreder:solid 1px;
            width: 200px;
            height: 100px;
        }
    </style>
</head>
<body>
      <h3>欢迎登陆403峡谷</h3>
      <hr>
<input type="button" value="测试" onclick="getDate()">

<div id="showdiv"></div>

</body>
</html>
