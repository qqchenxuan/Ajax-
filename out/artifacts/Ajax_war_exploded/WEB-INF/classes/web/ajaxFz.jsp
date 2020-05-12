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
    <script type="text/javascript">


        function myAjax(method,url,data,deal200,deal404,deal500,async) {
            //创建ajax引擎对象
            var ajax = getAjax();
            //复写onreadystatement函数
            ajax.onreadystatechange=function () {         //onreadystatechange  改一次触发一次
                //判断Ajax状态码
                if(ajax.readyState==4){
                    //判断响应状态码
                    if(ajax.status==200){
                        if (deal200){
                            deal200(ajax); //调用function(a)
                        }
                    }else if(ajax.status==404) {  //status用于储存此次响应状态码
                        if (deal404){deal404();}
                    }else if(ajax.status==500){
                        if (deal500){deal500();}
                    }
                }
                //发送请求
                if("get"==method){
                    ajax.open("get",url+(data==null?"":"?"+data),async);
                    ajax.send(null);
                }else if ("post"==method){
                    ajax.open("post",url,async);
                    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
                    ajax.send(data);
                }

            }



            /*-------------------------------------------------------------------------------------*/
            //封装
            function getAjax() {
                var ajax;
                if(window.XMLHttpRequest){  //所有现代浏览器 (IE7+、Firefox、Chrome、Safari 以及 Opera) 都内建了 XMLHttpRequest 对象。
                    ajax=new XMLHttpRequest();
                }else if(window.ActiveXObject){    //(window.ActiveXObject)的作用，用来判断浏览器是否支持ActiveX控件，如果支持ActiveX控件，我们可以利用var xml=new ActiveXObject("Microsoft.XMLHTTP")的形式来创建XMLHTTPRequest对象（这是在IE7以前的版本中）
                    ajax = new ActiveXObject("Msxm12.XMLHTTP");//
                }
                return ajax;
            }

            var deal200=function (a) {
                //获取响应内容
                var result = a.responseText;//返回此次响应的结果
                //获取元素对象
                var showdiv = document.getElementById("showdiv");
                showdiv.innerHTML=result;
            }
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
