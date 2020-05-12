<%--
  Created by IntelliJ IDEA.
  User: 晨轩
  Date: 2020/5/10
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
       function getXML(){
           //创建ajax引擎对象
           var ajax;
           if(window.XMLHttpRequest){
               ajax = new XMLHttpRequest();
           }else if (window.ActiveXObject){
               ajax = new ActiveXObject("Msxm12.XMLHTTP");
           }
           //复写onreadystatechange
           ajax.onreadystatechange=function() {         //onreadystatechange  改一次触发一次
               //判断Ajax状态码
               if(ajax.readyState==4){
                   //判断响应状态码
                   if(ajax.status==200){
                       //获取响应内容
                       var doc = ajax.responseXML;//返回此次响应的结果

                       //获取元素对象
                      alert(doc.getElementsByTagName("name")[0].innerHTML)
                   }
               }
           }
     //发送请求
           ajax.open("get","xml.jsp",true);
           ajax.send(null);
        }

    </script>

</head>
<body>
<input type="button" value="测试XML" onclick="getXML()" />

</body>
</html>
