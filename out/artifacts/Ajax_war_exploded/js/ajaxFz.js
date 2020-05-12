/*
        method:请求方式，值为get或者post
        url：请求地址
        data：没有值需要传入null
              有请求数据则传入字符串数据，格式为“a=1&b4=2“
        deal200：接收一个带有形参的js函数对象，形参接收的实参是ajax引擎对象
        deal404:接收一个js函数对象
        deal500:接收一个js函数对象
         async：表示设置同步代码执行还是异步代码执行，
                     默认是true，代表异步
                     false代表同步

      */

function myAjax(method,url,data,deal200,deal404,deal500,async) {
    //创建ajax引擎对象
    var ajax = getAjax();
    //复写onreadystatement函数
    //发送请求
    if("get"==method){
        ajax.open("get",url+(data==null?"":"?"+data),async);
        ajax.send(null);
    }else if ("post"==method){
        ajax.open("post",url,async);
        ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        ajax.send(data);
    }

    ajax.onreadystatechange=function () {         //onreadystatechange  改一次触发一次

        if(ajax.readyState==4){      //判断Ajax状态码
            //判断响应状态码
            if(ajax.status==200){
                if (deal200){
                    deal200(ajax); //调用传进来的函数
                }
            }else if(ajax.status==404) {  //status用于储存此次响应状态码
                if (deal404){
                    deal404();
                }
            }else if(ajax.status==500){
                if (deal500){
                    deal500();
                }
            }
        }

    }



    function getAjax() {
        var ajax;
        if(window.XMLHttpRequest){  //所有现代浏览器 (IE7+、Firefox、Chrome、Safari 以及 Opera) 都内建了 XMLHttpRequest 对象。
            ajax=new XMLHttpRequest();
        }else if(window.ActiveXObject){    //(window.ActiveXObject)的作用，用来判断浏览器是否支持ActiveX控件，如果支持ActiveX控件，我们可以利用var xml=new ActiveXObject("Microsoft.XMLHTTP")的形式来创建XMLHTTPRequest对象（这是在IE7以前的版本中）
            ajax = new ActiveXObject("Msxm12.XMLHTTP");//
        }
        return ajax;
    }

}