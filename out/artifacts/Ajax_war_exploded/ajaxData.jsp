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
<!--
   需求分析：
     1、在当前页面内显示查询结果，考虑使用ajax
     2、创建ajax函数
     3、调用ajax函数发送请求到UserServlet
     4.调用业务层获取对应的数据
-->
         <script type="text/javascript" src="js/ajaxFz.js" charset="UTF-8"></script>
         <script type="text/javascript">


             //获取数据
               function getData(){
                   //获取用户请求信息
                   var name = document.getElementById("uname").value;
                   //创建ajax引擎对象
                   var ajax;
                   if(window.XMLHttpRequest){
                       ajax = new XMLHttpRequest();
                   }else if (window.ActiveXObject){
                       ajax = new ActiveXObject("Msxm12.XMLHTTP");
                   }
                   //复写onreadystatechange
                   ajax.onreadystatechange=function () {
                         //判断ajax状态码
                       if (ajax.readyState==4){
                           //判断响应状态码
                           if(ajax.status==200){
                               //获取响应数据
                               var result=ajax.responseText;//向ajax后台的程序发送xmlhttp请求的时候, 后台程序接到请求会进行处理,处理结束后,可以返回一串数据给前台,这个就是responseText.
                               eval("var u="+result); //eval() 函数会将传入的字符串当做 JavaScript 代码进行执行。
                               //处理数据
                               //     //获取table对象
                               //     var ta= document.getElementById("ta");
                               //     //插入新的行
                               //     var tr=ta.insertRow(1); //返回的是插入的行对象
                               //
                               //     var ce110 = tr.insertCell(0)
                               //     ce110.innerHTML=u.uid;
                               //     var ce111 = tr.insertCell(1)
                               //     ce111.innerHTML=u.uname;
                               //     var ce112 = tr.insertCell(2)
                               //     ce112.innerHTML=u.price;
                               //     var ce113 = tr.insertCell(3)
                               //     ce113.innerHTML=u.loc;
                               //     var ce114 = tr.insertCell(4)
                               //     ce114.innerHTML=u.desc;
                           }
                       }
                   }
                   //发送请求
                     ajax.open("get","user?name="+name);
                   ajax.send(null);
               }




        function getData2(){
                   var name = document.getElementById("uname").value;
                   var data= "name="+name;
                   myAjax("get","user",data,function(ajax){
                       //获取响应数据
                       var result=ajax.responseText;

                    //处理响应数据
                    alert(result)

                } );

        }



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
