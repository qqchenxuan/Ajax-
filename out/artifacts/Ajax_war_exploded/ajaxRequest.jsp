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
        function ajaxReq(){
            var uname = document.getElementById("uname").value;
            var data = "name="+uname;
                   //创建ajax引擎对象
                  var ajax;
                  if(window.XMLHttpRequest){
                      ajax = new XMLHttpRequest();
                  }else if (window.ActiveXObject){
                      ajax = new ActiveXObject("Msxm12.XMLHTTP");
                  }
                  //复写onreadystatechange
                        ajax.onreadystatechange = function () {
                              //判断ajax状态码
                            if (ajax.readyState==4){
                                //判断ajax状态码
                                if(ajax.status==200){
                                    //获取响应内容
                                    var result = ajax.responseText;
                                    //获取响应内容
                                    alert(result)
                                }

                            }
                        }
                 //发送请求
                      //get方式 :请求实体拼接在URL后面
                      //   ajax.open("get","ajax？"+data);
                      //   ajax.send(null);
                     //post方式：请求实体需要单独发送
                     ajax.open("post","ajax");
                     ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded")
                     ajax.send("name=zz&pwd=123");
        }
    </script>
    <style type="text/css">
        #showdiv{
           border: solid 1px greenyellow;
            width: 200px;
            height: 100px;
        }
    </style>
</head>
<body>
<form action="" enctype="application/x-www-form-urlencoded"></form>
      <h3>欢迎登陆403峡谷</h3>
      <hr>
      <input type="text" name="uname" id="uname" value="">
<input type="button" value="测试" name="ajax" onclick="ajaxReq()">

<div id="showdiv"></div>

</body>
</html>
